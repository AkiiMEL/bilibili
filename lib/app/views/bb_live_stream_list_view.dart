import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../compenents/bb_navigation_link.dart';
import '../compenents/bb_network_image.dart';
import '../compenents/bb_ad_view.dart';
import '../utils/bb_common.dart';
import '../api/bb_api.dart';
import '../models/bb_http_body.dart';
import '../models/bb_live_list_body.dart';
import '../models/bb_live_group.dart';
import '../models/bb_live_ad.dart';
import '../models/bb_live_area_entrance.dart';
import '../models/bb_live_activity.dart';
import '../models/bb_live_rank.dart';
import '../models/bb_room.dart';

import 'bb_live_stream_list_item_view.dart';
import 'bb_live_stream_list_rank_view.dart';
import 'bb_live_stream_list_activity_view.dart';

class BBLiveStreamListView extends StatefulWidget {
  @override
  _BBLiveStreamListViewState createState() => _BBLiveStreamListViewState();
}

class _BBLiveStreamListViewState extends State<BBLiveStreamListView> {
  List<LiveGroup> _sections;
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
          if (section is LiveGroup<LiveAd>) {
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
                advertise: section.list?.toList(),
              ))
            ];
          } else if (section is LiveGroup<LiveAreaEntrance>) {
            List<LiveAreaEntrance> items = section.list?.toList();
            return [
              sliverGrid(
                  items: items,
                  max: 5,
                  lineSpacing: defaultMargin.bottom * 2,
                  itemBuilder:
                      (BuildContext context, LiveAreaEntrance entrance) {
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
          } else if (section is LiveGroup<LiveActivity>) {
            return [_box(BBLiveStreamListActivityView(activities: section))];
          } else if (section is LiveGroup<int>) {
            return [_box(SizedBox.shrink())];
          } else if (section is LiveGroup<LiveRank>) {
            return [
              _box(_header(section)),
              _box(BBLiveStreamRankView(section: section)),
              SliverToBoxAdapter(child: Divider())
            ];
          } else {
            List<Room> items = section.list?.toList();
            List<Widget> views;
            views = [
              _box(_header(section)),
              sliverGrid(
                items: items,
                max: 2,
                aspectRatio: 1.2,
                itemBuilder: (BuildContext context, Room liveRoom) {
                  return BBNavigationLink(
                    destination: BBRouteMgr.video + "${12345567}",
                    child: BBLiveStreamListItemView(item: liveRoom),
                  );
                },
              ),
            ];
            if (section.module?.id == 3) {
              views.add(_box(Padding(
                padding: EdgeInsets.symmetric(vertical: defaultMargin.bottom),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "更多${section.module.count}个${section.module.title}",
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

  Widget _header(LiveGroup section) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 28.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(section.module?.title ?? ""),
              SizedBox(width: defaultMargin.left / 2),
              Text(section.extra?.subtitle ?? ""),
            ],
          ),
          BBNavigationLink(
            destination: "x",
            child: Row(
              children: <Widget>[
                Text(
                  section?.module?.id == 3 ? "换一换" : "查看更多",
                ),
                SizedBox(width: defaultMargin.left / 2),
                Image.asset(
                  section?.module?.id == 3
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
    HttpBody<LiveListBody> body = await BBApi.requestAllLive();
    List<LiveGroup> copy = [];

    copy.addAll(body?.data?.banner ?? []);
    copy.addAll(body?.data?.areaEntranceV2 ?? []);
    copy.addAll(body?.data?.activityCardV2 ?? []);
    copy.addAll(body?.data?.myIdol ?? []);
    copy.addAll(body?.data?.roomList ?? []);
    copy.addAll(body?.data?.hourRank ?? []);

    copy = copy.where((e) => e.list?.isNotEmpty ?? false).toList();
    copy.sort((lhs, rhs) => lhs.module.sort.compareTo(rhs.module.sort));

    _refreshController.refreshCompleted();
    setState(() {
      _sections = copy;
    });
  }
}
