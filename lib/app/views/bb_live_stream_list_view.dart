import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:bilibili/app/utils/bb_args.dart';
import 'package:bilibili/app/api/bb_api.dart';
import 'package:bilibili/app/models/bb_live_stream_models.dart';

import 'bb_live_stream_list_partition_section_view.dart';
import 'bb_live_stream_list_rank_section_view.dart';
import 'bb_live_stream_list_activity_section_view.dart';
import 'bb_live_stream_list_ad_section.dart';
import 'bb_live_stream_list_area_section_view.dart';

class BBLiveStreamListView extends StatefulWidget {
  BBLiveStreamListView({Key key}) : super(key: key);

  @override
  _BBLiveStreamListViewState createState() => _BBLiveStreamListViewState();
}

class _BBLiveStreamListViewState extends State<BBLiveStreamListView>
    with AutomaticKeepAliveClientMixin {
  List<LiveStreamSection> _sections;
  RefreshController _refreshController;

  @override
  bool get wantKeepAlive => true;

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
    super.build(context);
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SmartRefresher(
            controller: _refreshController,
            onRefresh: _onRefresh,
            child: _getListView(),
          ),
          Positioned(
            bottom: defaultMargin.bottom,
            right: defaultMargin.right,
            child: Image.asset("assets/images/live_shoot58x58.png"),
          ),
        ],
      ),
    );
  }

  void _onRefresh() async {
    LiveStreamHttpBody body = await BBApi.requestAllLive();
    List<LiveStreamSection> copy = [];

    copy.addAll(body.data?.banner ?? []);
    copy.addAll(body.data?.areaEntranceV2 ?? []);
    copy.addAll(body.data?.activityCardV2 ?? []);
    copy.addAll(body.data?.myIdol ?? []);
    copy.addAll(body.data?.roomList ?? []);
    copy.addAll(body.data?.hourRank ?? []);

    copy = copy.where((e) => (e.list ?? []).isNotEmpty).toList();
    copy.sort((lhs, rhs) => lhs.moduleInfo.sort.compareTo(rhs.moduleInfo.sort));

    _refreshController.refreshCompleted();
    setState(() {
      _sections = copy;
    });
  }

  Widget _getListView() {
    return ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      // Add all live button with a item appended to list end.
      itemCount: _sections.length == 0 ? 0 : _sections.length + 1,
      itemBuilder: (context, index) {
        // EdgeInsets of contents.
        return Padding(
          padding: defaultMargin,
          child: index == _sections.length
              ? Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 44.0, bottom: defaultMargin.bottom),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 44.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Text(
                          "全部直播",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : _getListItemView(_sections[index]),
        );
      },
    );
  }

  Widget _getListItemView(LiveStreamSection section) {
    ModuleInfo module = section.moduleInfo;

    if (section is LiveStreamSection<LiveStreamAd>) {
      return BBLiveStreamListAdSectionView(
        advertisements: section,
      );
    } else if (section is LiveStreamSection<LiveStreamAreaEntrance>) {
      return BBLiveStreamListAreaSectionView(
        areas: section,
      );
    } else if (section is LiveStreamSection<LiveStreamActivity>) {
      return BBLiveStreamListActivitySectionView(
        activities: section,
      );
    } else if (section is LiveStreamSection<LiveStreamIdol>) {
      return SizedBox.shrink();
    } else if (section is LiveStreamSection<LiveStreamRank>) {
      return Column(
        children: <Widget>[
          BBLiveStreamListSectionHeaderView(
            module: module,
            title: module == null ? null : module.title,
            subtitle:
                section.extraInfo == null ? null : section.extraInfo.subtitle,
            onTap: (module) {},
          ),
          BBLiveStreamRankSectionView(
            section: section,
          ),
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          BBLiveStreamListSectionHeaderView(
            module: section.moduleInfo,
            title: module == null ? null : module.title,
            onTap: (module) {},
            // Needs refresh when id is equals to 3, otherwise
            // show detail when tapped.
            accessoryView: module == null
                ? null
                : (module.id == 3
                    ? Row(
                        children: <Widget>[
                          Text(
                            "换一换",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Icon(Icons.rotate_left, size: 24.0),
                        ],
                      )
                    : null),
          ),
          BiliLiveStreamListPartitionView(
            partition: section,
          ),
          // Needs footer when id is equals to 3.
          module == null
              ? SizedBox.shrink()
              : (module.id == 3
                  ? BiliLiveStreamListSectionFooterView(
                      module: module,
                      onTap: (module) {},
                    )
                  : SizedBox.shrink()),
        ],
      );
    }
  }
}