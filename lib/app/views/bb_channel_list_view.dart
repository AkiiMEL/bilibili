import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../utils/bb_args.dart';
import '../utils/bb_utils.dart';
import '../api/bb_api.dart';
import '../compenents/bb_ui.dart';

import 'bb_channel_list_entry_item_view.dart';
import 'bb_channel_list_section.dart';
import 'bb_channel_list_dynamics_view.dart';

class BBChannelListView extends StatefulWidget {
  @override
  _BBChannelListViewState createState() => _BBChannelListViewState();
}

class _BBChannelListViewState extends State<BBChannelListView> {
  List<ChannelModule> _groups;
  RefreshController _refreshController;

  @override
  void initState() {
    super.initState();
    _groups = [];
    _refreshController = RefreshController();
    _onRefresh();
  }

  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SmartRefresher(
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: CustomScrollView(
          slivers: _buildSlivers(context),
        ),
      ),
    );
  }

  List<Widget> _buildSlivers(BuildContext context) {
    return _groups
        .map((e) {
          switch (e.type) {
            case "search":
              return [_buildSliverSearchBar()];
            case "subscribe":
              return e.items != null && e.items.isNotEmpty
                  ? [
                      _buildSliverEntries(e.items.toList()),
                      _buildSliverDivider(),
                    ]
                  : <Widget>[];
            case "new":
              return e.items != null && e.items.isNotEmpty
                  ? [
                      _buildSliverSectionHead(
                        context,
                        e,
                        _buildNavigation(context, e),
                      ),
                      _buildSliverList(e.items.toList()),
                      _buildSliverDivider(),
                    ]
                  : <Widget>[];
            case "scaned":
              return e.items != null && e.items.isNotEmpty
                  ? [
                      _buildSliverSectionHead(context, e, null),
                      _buildSliverHistory(e.items.toList()),
                      _buildSliverDivider(),
                    ]
                  : <Widget>[];
            case "rcmd":
              List<Widget> slivers = [];
              if (e.item?.list?.isNotEmpty ?? false) {
                slivers.add(_buildSliverEntries(e.item.list.toList()));
              }
              if (e.item?.dynamics?.isNotEmpty ?? false) {
                slivers.add(BBChannelListSliverDynamics(e.item.dynamics.toList()));
              }
              if (e.item?.rcmd?.isNotEmpty ?? false) {
                slivers.add(_buildSliverList(e.item.rcmd.toList()));
              }
              if (slivers.isNotEmpty) {
                slivers.insert(
                    0,
                    _buildSliverSectionHead(
                      context,
                      e,
                      _buildExchange(context, Colors.grey, e),
                    ));
                slivers.add(SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: defaultMargin + defaultMargin,
                        child: _buildExchange(
                            context, Theme.of(context).accentColor, e),
                      ),
                    ],
                  ),
                ));
              }
              return slivers;
            default:
              return <Widget>[];
          }
        })
        .toList()
        .expand((sliver) => sliver)
        .toList();
  }

  Widget _buildSliverEntries(List<Channel> e) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, index) =>
            BBChannelListEntryItemView(channel: e[index]),
        childCount: e.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: defaultMargin.bottom,
        crossAxisSpacing: defaultMargin.left,
        childAspectRatio: 0.8,
      ),
    );
  }

  Widget _buildSliverDivider() {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: defaultMargin.top),
        color: Colors.grey[100],
        height: defaultMargin.bottom,
      ),
    );
  }

  Widget _buildSliverSearchBar() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: defaultMargin,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(vertical: defaultMargin.top / 2),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15.0),
          ),
          placeholder: "搜索你感兴趣的频道",
          placeholderStyle: TextStyle(
            color: CupertinoColors.placeholderText,
            fontSize: 13.0,
          ),
          prefix: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin.left),
            child: Image.asset("assets/images/topic_search_ico22x22.png"),
          ),
          prefixMode: OverlayVisibilityMode.always,
          readOnly: true,
          onTap: () {
            print("search ...............");
          },
        ),
      ),
    );
  }

  Widget _buildSliverList(List<Channel> e) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            BBChannelListSection(channel: e[index]),
            index == e.length - 1 ? SizedBox.shrink() : Divider(),
          ],
        );
      },
      childCount: e.length,
    ));
  }

  Widget _buildSliverHistory(List<Channel> e) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: defaultMargin,
        child: Container(
          height: 150.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              Channel channel = e[index];
              double radius = 4.0;
              return AspectRatio(
                aspectRatio: 0.68,
                child: Container(
                  margin: defaultMargin.copyWith(
                      right: index == 4 ? defaultMargin.right : 0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: defaultMargin.bottom,
                        offset: Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(radius),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(radius),
                          topRight: Radius.circular(radius),
                        ),
                        child: Container(
                          height: 50.0,
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              BBNetworkImage(
                                channel.background,
                                placeholder: Images.placeholder,
                              ),
                              Container(
                                color: BBColor.from(
                                  channel.themeColor,
                                  alpha: channel.alpha ?? 100,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 28.0,
                        child: Container(
                          height: 44.0,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: BBNetworkImage(
                              channel.cover,
                              placeholder: Images.channel,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: defaultMargin.left,
                        right: defaultMargin.right,
                        child: Container(
                          height: 60.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(channel.title ?? ""),
                              SizedBox(height: defaultMargin.bottom / 2),
                              Text(
                                channel.desc ?? "",
                                style: Theme.of(context).textTheme.caption,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: e?.length ?? 0,
          ),
        ),
      ),
    );
  }

  Widget _buildSliverSectionHead(
      BuildContext context, ChannelModule e, Widget accessoryView) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: defaultMargin,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(e.label ?? "", style: Theme.of(context).textTheme.headline6),
            accessoryView ?? SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  Widget _buildExchange(BuildContext context, Color color, ChannelModule e) {
    return GestureDetector(
      child: Row(
        children: <Widget>[
          Text("换一换",
              style: Theme.of(context).textTheme.button.copyWith(color: color)),
          SizedBox(width: defaultMargin.left / 2),
          Image.asset(Images.exchange, color: color),
        ],
      ),
    );
  }

  Widget _buildNavigation(BuildContext context, ChannelModule e) {
    return GestureDetector(
      child: Row(
        children: <Widget>[
          Text(e.descButton.text, style: Theme.of(context).textTheme.button),
          Image.asset(Images.rightArrow),
        ],
      ),
    );
  }

  void _onRefresh() async {
    HttpListBody<ChannelModule> body = await BBApi.requestChannelHomeData();
    if (mounted) {
      _refreshController.refreshCompleted();
      setState(() {
        _groups = body?.data?.toList() ?? [];
      });
    }
  }
}
