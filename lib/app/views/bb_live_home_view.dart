import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../compenents/bb_ui.dart';
import '../utils/bb_args.dart';
import '../utils/bb_utils.dart';
import '../api/bb_api.dart';
import '../models/bb_http_body.dart';
import '../models/bb_live_home_body.dart';

import 'bb_live_home_card_view.dart';
import 'bb_live_home_rank_view.dart';
import 'bb_live_home_activity_view.dart';

class BBLiveHomeView extends StatefulWidget {
  @override
  _BBLiveHomeViewState createState() => _BBLiveHomeViewState();
}

class _BBLiveHomeViewState extends State<BBLiveHomeView> {
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
      bottom: false,
      child: SmartRefresher(
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: CustomScrollView(
          slivers: _buildSlivers(),
        ),
      ),
    );
  }

  List<Widget> _buildSlivers() {
    List<Widget> slivers = _sections
        .map((section) {
          if (section.module?.id == 1) {
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
          } else if (section.module?.id == 58) {
            return [
              sliverGrid<LiveTag>(
                  items: section.list?.toList(),
                  crossAxisCount: 5,
                  lineSpacing: defaultMargin.bottom * 2,
                  itemBuilder: (BuildContext context, LiveTag e) {
                    return BBAppView(
                      title: e.title,
                      image: e.pic,
                      imageSize: Size(44.0, 44.0),
                    );
                  })
            ];
          } else if (section.module?.id == 60) {
            return [_box(BBLiveHomeActivityView(activities: section))];
          } else if (section.module?.id == 4) {
            return [
              _box(_header(section)),
              _box(BBLiveHomeRankView(section: section)),
              SliverToBoxAdapter(child: Divider())
            ];
          } else {
            return [
              _box(_header(section)),
              sliverGrid<Room>(
                items: section.list?.toList(),
                crossAxisCount: 2,
                aspectRatio: 1.2,
                itemBuilder: (BuildContext context, Room liveRoom) {
                  return BBNavigationLink(
                    destination: BBRouteMgr.video + "${liveRoom.roomid}",
                    child: BBLiveHomeCardView(
                      item: liveRoom,
                      showAvatar: section.module?.id == 13,
                    ),
                  );
                },
              ),
              _box(_footer(section)),
              SliverToBoxAdapter(child: Divider()),
            ];
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

  Widget _footer(LiveGroup section) {
    return section?.module?.id == 3
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "更多${section.module.count}个${section.module.title}",
                style: TextStyle(color: Colors.pink, fontSize: 14.0),
              ),
              Icon(Icons.arrow_forward_ios, size: 14.0, color: Colors.pink),
            ],
          )
        : SizedBox.shrink();
  }

  void _onRefresh() async {
    HttpBody<LiveHomeBody> body = await BBApi.requestAllLive();
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
