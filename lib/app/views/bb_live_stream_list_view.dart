import 'package:bilibili/app/routers/bb_route_mgr.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../compenents/bb_navigation_link.dart';
import '../compenents/bb_network_image.dart';
import '../compenents/bb_ad_view.dart';
import '../utils/bb_common.dart';
import '../api/bb_api.dart';
import '../models/bb_live_stream_models.dart';

import 'bb_live_stream_list_item_view.dart';
import 'bb_live_stream_list_rank_view.dart';
import 'bb_live_stream_list_activity_view.dart';

class BBLiveStreamListView extends StatefulWidget {
  @override
  _BBLiveStreamListViewState createState() => _BBLiveStreamListViewState();
}

class _BBLiveStreamListViewState extends State<BBLiveStreamListView> {
  List<LiveStreamSection> _sections;
  RefreshController _refreshController;

  @override
  void initState() {
    super.initState();
    _sections = [];
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
      child: CustomScrollView(
        slivers: _buildSlivers(),
      ),
    );
  }

  List<Widget> _buildSlivers() {
    List<Widget> slivers = _sections
        .map((section) {
          if (section is LiveStreamSection<LiveStreamAd>) {
            return [
              _box(BBAdView(
                aspectRatio: 375.0 / 100.0,
                borderRadius: BorderRadius.circular(5),
                itemBuilder: (BuildContext context, int index) {
                  return BBNetworkImage(
                    section.list[index].pic,
                    placeholder: Images.placeholder,
                  );
                },
                advertise: section.list,
              ))
            ];
          } else if (section is LiveStreamSection<LiveStreamAreaEntrance>) {
            List<LiveStreamAreaEntrance> items = section.list;
            return [
              sliverGrid(
                  items: items,
                  max: 5,
                  lineSpacing: defaultMargin.bottom * 2,
                  itemBuilder:
                      (BuildContext context, LiveStreamAreaEntrance entrance) {
                    return Column(
                      children: <Widget>[
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: BBNetworkImage(
                              entrance.pic,
                              placeholder: Images.placeholder,
                            ),
                          ),
                        ),
                        Text(
                          entrance.title ?? "",
                          style: TextStyle(fontSize: 12),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    );
                  })
            ];
          } else if (section is LiveStreamSection<LiveStreamActivity>) {
            return [_box(BBLiveStreamListActivityView(activities: section))];
          } else if (section is LiveStreamSection<LiveStreamIdol>) {
            return [_box(SizedBox.shrink())];
          } else if (section is LiveStreamSection<LiveStreamRank>) {
            return [
              _box(_header(section)),
              _box(BBLiveStreamRankView(section: section)),
              SliverToBoxAdapter(child: Divider())
            ];
          } else {
            List<LiveStreamRoom> items = section.list;
            List<Widget> views;
            views = [
              _box(_header(section)),
              sliverGrid(
                items: items,
                max: 2,
                aspectRatio: 1.2,
                itemBuilder: (BuildContext context, LiveStreamRoom liveRoom) {
                  return BBNavigationLink(
                    destination: BBRouteMgr.video + "${12345567}",
                    child: BBLiveStreamListItemView(item: liveRoom),
                  );
                },
              ),
            ];
            if (section.moduleInfo?.id == 3) {
              views.add(_box(Padding(
                padding: EdgeInsets.symmetric(vertical: defaultMargin.bottom),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "更多${section.moduleInfo.count}个${section.moduleInfo.title}",
                      style: TextStyle(color: Colors.pink, fontSize: 14.0),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        size: 14.0, color: Colors.pink),
                  ],
                ),
              )));
            }
            views.add(SliverToBoxAdapter(child: Divider()));
            return views;
          }
        })
        .expand((slivers) => slivers)
        .toList();
    if (slivers.isNotEmpty) {
      slivers.add(SliverToBoxAdapter(
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 44.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).dividerTheme.color,
                    ),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 4.0),
                    child: Text("全部直播"),
                  ),
                )
              ],
            )),
      ));
    }
    return slivers;
  }

  Widget _box(Widget v) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: defaultMargin,
        child: v,
      ),
    );
  }

  Widget _header(LiveStreamSection section) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 28.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(section.moduleInfo?.title ?? ""),
              SizedBox(width: defaultMargin.left / 2),
              Text(section.extraInfo?.subtitle ?? ""),
            ],
          ),
          BBNavigationLink(
            destination: "x",
            child: Row(
              children: <Widget>[
                Text(
                  section?.moduleInfo?.id == 3 ? "换一换" : "查看更多",
                ),
                SizedBox(width: defaultMargin.left / 2),
                Image.asset(
                  section?.moduleInfo?.id == 3
                      ? Images.rightArrow
                      : Images.rightArrow,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onRefresh() async {
    LiveStreamHttpBody body = await BBApi.requestAllLive();
    List<LiveStreamSection> copy = [];

    copy.addAll(body?.data?.banner ?? []);
    copy.addAll(body?.data?.areaEntranceV2 ?? []);
    copy.addAll(body?.data?.activityCardV2 ?? []);
    copy.addAll(body?.data?.myIdol ?? []);
    copy.addAll(body?.data?.roomList ?? []);
    copy.addAll(body?.data?.hourRank ?? []);

    copy = copy.where((e) => e.list?.isNotEmpty ?? false).toList();
    copy.sort((lhs, rhs) => lhs.moduleInfo.sort.compareTo(rhs.moduleInfo.sort));

    _refreshController.refreshCompleted();
    setState(() {
      _sections = copy;
    });
  }
}
