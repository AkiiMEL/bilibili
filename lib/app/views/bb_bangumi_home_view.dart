import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../utils/bb_utils.dart';
import '../api/bb_api.dart';
import '../compenents/bb_ui.dart';
import '../models/bb_models.dart';
import 'bb_bangumi_card_view.dart';
import 'bb_bangumi_rank_row.dart';

class BBBangumiHomeView extends StatefulWidget {
  @override
  _BBBangumiHomeViewState createState() => _BBBangumiHomeViewState();
}

class _BBBangumiHomeViewState extends State<BBBangumiHomeView> {
  List<Module> _modules;
  RefreshController _refreshController;
  StreamController<BangumiListItem> _timeline = StreamController.broadcast();
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _modules = [];
    _refreshController = RefreshController();
    _scrollController = ScrollController();
    _onRefresh();
  }

  @override
  void dispose() {
    super.dispose();
    _timeline.close();
    _refreshController.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SmartRefresher(
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: CustomScrollView(
          slivers: _modules.isEmpty ? <Widget>[] : _buildSlivers(),
        ),
      ),
    );
  }

  List<Widget> _buildSlivers() {
    List<Widget> slivers = [];

    _modules = _modules.skipWhile((e) => e.items?.isEmpty ?? true).toList();

    int index = _modules.indexWhere((e) => e.style == ModuleStyle.TIP);
    if (index != -1) {
      _modules.insert(0, _modules.removeAt(index));
    }
    index = _modules.indexWhere((e) => e.style == ModuleStyle.FUNCTION);
    if (index != -1) {
      _modules.insert(0, _modules.removeAt(index));
    }
    index = _modules.indexWhere((e) => e.style == ModuleStyle.BANNER);
    if (index != -1) {
      _modules.insert(0, _modules.removeAt(index));
    }

    _modules.forEach((module) {
      switch (module.style) {
        case ModuleStyle.BANNER:
          slivers.addAll([
            boxAdapter(
              padding: defaultMargin.copyWith(top: 0.0, bottom: 0.0),
              child: BBAdView(
                aspectRatio: 375 / 150,
                borderRadius: BorderRadius.circular(5.0),
                advertise: module.items?.toList(),
                itemBuilder: (BuildContext context, int index) {
                  return BBNetworkImage(
                    module.items.toList()[index].cover,
                    placeholder: Images.placeholder,
                  );
                },
              ),
            ),
          ]);
          break;
        case ModuleStyle.FUNCTION:
          slivers.addAll([
            sliverGrid(
              padding: defaultMargin.copyWith(left: 0.0, right: 0.0),
              items: module.items?.toList(),
              crossAxisCount: 5,
              itemBuilder: (BuildContext context, BangumiListItem features) {
                return BBAppView(
                  title: features.title,
                  image: features.cover,
                  spacing: 0.0,
                );
              },
            ),
          ]);
          break;
        case ModuleStyle.FOLLOW:
          slivers.addAll([
            boxAdapter(
              padding: defaultMargin,
              child: BBHeadView(
                title: module.title,
                accessoryView: Row(
                  children: <Widget>[
                    Text.rich(
                      TextSpan(
                        text: "更新",
                        style: TextStyle(fontSize: 12.0),
                        children: <InlineSpan>[
                          TextSpan(
                            text: " ${module.follow?.upgrade ?? "-"} ",
                            style: TextStyle(
                              color: Color(0xFFF6749A),
                            ),
                          ),
                          TextSpan(
                            text: "部",
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            boxAdapter(
              padding: defaultMargin,
              child: Container(
                height: 120.0,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: defaultMargin.left,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return BBBangumiCardView(module.items[index]);
                  },
                  itemCount: module.items.length,
                ),
              ),
            ),
            boxAdapter(child: Divider()),
          ]);
          break;
        case ModuleStyle.TIP:
          slivers.addAll([
            boxAdapter(
              padding: defaultMargin,
              child: _tip(module),
            ),
            boxAdapter(child: Divider()),
          ]);
          break;
        case ModuleStyle.VCARD:
        case ModuleStyle.CARD:
          slivers.addAll([
            boxAdapter(
              padding: defaultMargin,
              child: BBHeadView(title: module.title),
            ),
            sliverGrid(
              padding: defaultMargin.copyWith(top: 0.0),
              aspectRatio: module.style == ModuleStyle.CARD ? 1.25 : 0.53,
              items: module.items.toList(),
              crossAxisCount: module.style == ModuleStyle.CARD ? 2 : 3,
              itemBuilder: (BuildContext context, BangumiListItem bangumi) {
                return BBBangumiCardView(
                  bangumi,
                  aspectRatio: module.style == ModuleStyle.CARD ? 16.0 / 9.0 : 3.0 / 4.0,
                );
              },
            ),
            boxAdapter(child: BBExchangeView()),
            boxAdapter(child: Divider()),
          ]);
          break;
        case ModuleStyle.TOPIC:
          slivers.addAll([]);
          break;
        case ModuleStyle.TIMELINE:
          slivers.addAll(_timelineSlivers(module));
          break;
        case ModuleStyle.RANK:
          slivers.addAll(_rankSlivers(module));
          break;
        case ModuleStyle.FLOW:
          slivers.addAll([
            boxAdapter(
              padding: defaultMargin,
              child: BBHeadView(
                title: module.title,
              ),
            ),
            boxAdapter(
              padding: defaultMargin.copyWith(top: 0.0),
              child: Wrap(
                spacing: defaultMargin.left,
                runSpacing: defaultMargin.bottom,
                children: module.items
                        ?.skipWhile((bangumi) => bangumi.title?.isEmpty ?? true)
                        ?.map(
                          (bangumi) => Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: Text(
                              bangumi.title,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                        )
                        ?.toList() ??
                    [],
              ),
            ),
            boxAdapter(child: Divider()),
          ]);
          break;
        case ModuleStyle.HLIST:
          slivers.addAll([]);
          break;
        default:
          slivers.addAll([]);
          break;
      }
    });
    return slivers;
  }

  Widget _tip(Module module) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFCFCF0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: defaultMargin,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  module.items?.first?.title ?? "",
                  style: TextStyle(color: Color(0xFFF7B776)),
                ),
                SizedBox(height: defaultMargin.bottom / 2),
                Text(
                  module.items?.first?.desc ?? "",
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFCF0DE),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
                    child: Center(
                      child: Text(
                        module.items?.first?.desc2 ?? "",
                        style: TextStyle(
                          color: Color(0xFFF7B776),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Image.asset(Images.vipTipClose),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _timelineSlivers(Module module) {
    assert(module.items?.isNotEmpty ?? true);

    BangumiListItem initialData =
        module.items.firstWhere((e) => e.isToday == 1, orElse: () => null) ??
            module.items.first;

    return [
      boxAdapter(
        padding: EdgeInsets.only(top: defaultMargin.top),
        child: StreamBuilder(
          initialData: initialData,
          stream: _timeline.stream,
          builder:
              (BuildContext context, AsyncSnapshot<BangumiListItem> snapshot) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                LinkedHashMap hashMap = LinkedHashMap.from(
                  {"五": 5, "六": 6, "日": 7, "一": 1, "二": 2, "三": 3, "四": 4},
                );
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: hashMap.keys.map((d) {
                    bool isSelected = snapshot.data ==
                        module.items.firstWhere(
                            (e) => e.dayOfWeek == hashMap[d],
                            orElse: () => null);
                    return GestureDetector(
                      child: Container(
                        height: 28.0,
                        width:
                            (constraints.maxWidth - defaultMargin.left * 8) / 7,
                        decoration: BoxDecoration(
                          color: isSelected ? Color(0xFFF6749A) : null,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: Center(
                          child: Text(
                            isSelected ? "周$d" : d,
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color:
                                    isSelected ? Colors.white : Colors.black),
                          ),
                        ),
                      ),
                      onTap: () {
                        BangumiListItem selected = module.items.firstWhere(
                            (e) => e.dayOfWeek == hashMap[d],
                            orElse: () => null);
                        _timeline.sink.add(selected);
                      },
                    );
                  }).toList(),
                );
              },
            );
          },
        ),
      ),
      StreamBuilder(
        initialData: initialData,
        builder:
            (BuildContext context, AsyncSnapshot<BangumiListItem> snapshot) {
          return sliverGrid(
            padding: defaultMargin,
            items: snapshot.data?.episodes?.toList(),
            crossAxisCount: 4,
            aspectRatio: 9.0 / 16.0,
            itemBuilder: (BuildContext context, Episode bangumi) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: BBNetworkImage(
                        bangumi.cover,
                        placeholder: Images.placeholder,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(bangumi.title ?? "", maxLines: 2),
                  Text(
                    "更新至${bangumi.pubIndex ?? "-"}",
                    style: Theme.of(context).textTheme.caption,
                    maxLines: 1,
                  ),
                ],
              );
            },
          );
        },
        stream: _timeline.stream,
      ),
      boxAdapter(
          child: Padding(
        padding: defaultMargin,
        child: Row(children: <Widget>[
          Spacer(),
          Text(
            "查看完整时间表",
            style: Theme.of(context).textTheme.caption.copyWith(
                  color: Color(0xFFF6749A),
                ),
          ),
          Image.asset(Images.rightArrow, color: Color(0xFFF6749A)),
          Spacer(),
        ]),
      )),
      boxAdapter(child: Divider()),
    ];
  }

  List<Widget> _rankSlivers(Module module) {
    assert(module.items?.isNotEmpty ?? true);
    return [
      boxAdapter(
        padding: defaultMargin,
        child: BBHeadView(title: module.title),
      ),
      boxAdapter(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
            height: constraints.maxWidth - 50.0,
            child: NotificationListener(
              onNotification: (note) {
                print(note);
                return true;
              },
              child: GridView.builder(
                controller: ScrollController(),
                padding: defaultMargin.copyWith(top: 0.0, bottom: 0.0),
                scrollDirection: Axis.horizontal,
                itemCount: module.items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: defaultMargin.left,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.03),
                          Colors.transparent
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              defaultMargin.copyWith(top: 16.0, bottom: 0.0),
                          child: Text(module.items[index].title ?? ""),
                        ),
                        Expanded(
                          child: Padding(
                            padding: defaultMargin.copyWith(bottom: 0.0),
                            child: LayoutBuilder(builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return ListView.builder(
                                itemCount:
                                    module.items[index].cards?.length ?? 0,
                                itemExtent: constraints.maxHeight / 3,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  BangumiListItem bangumi =
                                      module.items[index].cards[index];
                                  return BBBangumiRankRow(bangumi, index);
                                },
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      )),
      boxAdapter(
          child: Padding(
        padding: defaultMargin,
        child: Row(children: <Widget>[
          Spacer(),
          Text(
            "查看完整榜单",
            style: Theme.of(context).textTheme.caption.copyWith(
                  color: Color(0xFFF6749A),
                ),
          ),
          Image.asset(Images.rightArrow, color: Color(0xFFF6749A)),
          Spacer(),
        ]),
      )),
      boxAdapter(child: Divider()),
    ];
  }

  void _onRefresh() async {
    HttpBody<BangumiHomeBody> httpBody = await BBApi.requestAllBangumi();

    _refreshController.refreshCompleted();

    setState(() {
      _modules = httpBody?.result?.modules?.toList() ?? [];
    });
  }
}
