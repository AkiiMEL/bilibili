import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tuple/tuple.dart';

import '../utils/bb_utils.dart';
import '../api/bb_api.dart';
import '../compenents/bb_ui.dart';
import '../models/bb_text_attributes.dart';

class BBBangumiHomeView extends StatefulWidget {
  @override
  _BBBangumiHomeViewState createState() => _BBBangumiHomeViewState();
}

class _BBBangumiHomeViewState extends State<BBBangumiHomeView> {
  List<Module> _modules;
  RefreshController _refreshController;
  StreamController<BangumiListItem> _timeline = StreamController.broadcast();

  @override
  void initState() {
    super.initState();
    _modules = [];
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
          slivers: _modules.isEmpty ? <Widget>[] : _buildSlivers(),
        ),
      ),
    );
  }

  List<Widget> _buildSlivers() {
    List<Widget> slivers = [];
    _modules.skipWhile((e) => e.items?.isEmpty ?? true).forEach((e) {
      switch (e.style) {
        case "banner":
          slivers.addAll([
            boxAdapter(
              padding: defaultMargin.copyWith(top: 0.0, bottom: 0.0),
              child: BBAdView(
                aspectRatio: 375 / 150,
                borderRadius: BorderRadius.circular(5.0),
                advertise: e.items?.toList(),
                itemBuilder: (BuildContext context, int index) {
                  return BBNetworkImage(
                    e.items.toList()[index].cover,
                    placeholder: Images.placeholder,
                  );
                },
              ),
            ),
          ]);
          break;
        case "function":
          slivers.addAll([
            sliverGrid(
              padding: defaultMargin.copyWith(left: 0.0, right: 0.0),
              items: e.items?.toList(),
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
        case "follow":
          slivers.addAll([
            boxAdapter(
              padding: defaultMargin.copyWith(top: 0.0, bottom: 0.0),
              child: BBHeadView(
                title: e.title,
                accessoryView: Row(
                  children: <Widget>[
                    Text.rich(
                      TextSpan(
                        text: "更新",
                        style: TextStyle(fontSize: 12.0),
                        children: <InlineSpan>[
                          TextSpan(
                            text: " ${e.follow?.upgrade ?? "-"} ",
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
                    return _card(e.items[index]);
                  },
                  itemCount: e.items.length,
                ),
              ),
            ),
            boxAdapter(child: Divider()),
          ]);
          break;
        case "tip":
          slivers.addAll([
            boxAdapter(
              padding: defaultMargin,
              child: _tip(e),
            ),
            boxAdapter(child: Divider()),
          ]);
          break;
        case "v_card":
        case "card":
          slivers.addAll([
            boxAdapter(
              padding: defaultMargin.copyWith(top: 0.0, bottom: 0.0),
              child: BBHeadView(
                title: e.title,
              ),
            ),
            sliverGrid(
              padding: defaultMargin.copyWith(top: 0.0),
              aspectRatio: e.style == "card" ? 1.25 : 0.53,
              items: e.items.toList(),
              crossAxisCount: e.style == "card" ? 2 : 3,
              itemBuilder: (BuildContext context, BangumiListItem bangumi) {
                return _card(
                  bangumi,
                  aspectRatio: e.style == "card" ? 16.0 / 9.0 : 3.0 / 4.0,
                );
              },
            ),
            boxAdapter(child: BBExchangeView()),
            boxAdapter(child: Divider()),
          ]);
          break;
        case "topic":
          slivers.addAll([]);
          break;
        case "timeline":
          slivers.addAll(_timelineSlivers(e));
          break;
        case "rank":
          slivers.addAll([]);
          break;
        case "flow":
          slivers.addAll([
            boxAdapter(
              padding: defaultMargin.copyWith(top: 0.0, bottom: 0.0),
              child: BBHeadView(
                title: e.title,
              ),
            ),
            boxAdapter(
              padding: defaultMargin.copyWith(top: 0.0),
              child: Wrap(
                spacing: defaultMargin.left,
                runSpacing: defaultMargin.bottom,
                children: e.items
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
        case "h_list":
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

  Widget _card(BangumiListItem bangumi, {double aspectRatio = 16.0 / 9.0}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: aspectRatio,
          child: BBThumbnailView(
            url: bangumi.cover,
            borderRadius: BorderRadius.circular(5.0),
            topLeftView: bangumi.status != null
                ? Container(
                    padding: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      ),
                    ),
                    child: Image.asset(
                      bangumi.status?.follow == 1
                          ? Images.bangumiFollowed
                          : Images.bangumiUnFollow,
                    ),
                  )
                : null,
            topRightView: Padding(
              padding: EdgeInsets.only(top: 2.0, right: 2.0),
              child: BBMediaTagView(
                contentInsets: EdgeInsets.symmetric(horizontal: 2.0),
                textAttributes: TextAttributes(
                  (u) => u
                    ..text = bangumi.badge
                    ..textColor = "#FFFFFF"
                    ..backgroundColor = "#F6749A",
                ),
              ),
            ),
            bottomLeftIconAndDescriptions: [
              Tuple2(null,
                  bangumi.follow?.newEp?.indexShow ?? bangumi.stat?.followView)
            ],
          ),
        ),
        SizedBox(height: defaultMargin.bottom / 2),
        Text(
          bangumi.title ?? "",
          maxLines: aspectRatio > 1 ? 1 : 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          bangumi.desc ?? "",
          style: Theme.of(context).textTheme.subtitle.copyWith(
                color: Theme.of(context).accentColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ],
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
                          color: isSelected
                              ? Color(0xFFF6749A)
                              : null,
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
