import 'package:flutter/material.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:bilibili/utils/bili_args.dart';
import 'package:bilibili/api/bili_live_api.dart';
import 'package:bilibili/models/bili_live_models.dart';
import 'package:bilibili/views/home/live/bili_live_list_partition_section_view.dart';
import 'package:bilibili/views/home/live/bili_live_list_rank_section_view.dart';
import 'package:bilibili/views/home/live/bili_live_list_activity_section_view.dart';
import 'package:bilibili/views/home/live/bili_live_list_ad_section.dart';
import 'package:bilibili/views/home/live/bili_live_list_area_section_view.dart';

class BiliLiveListView extends StatefulWidget {
  BiliLiveListView({Key key}) : super(key: key);

  @override
  _BiliLiveListViewState createState() => _BiliLiveListViewState();
}

class _BiliLiveListViewState extends State<BiliLiveListView> {
  List<LiveSection> _sections = [];
  RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    super.initState();
    _onRefresh();
  }

  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }

  Future<void> _onRefresh() async {
    LiveStreamBody body = await BiliApi.requestAllLive();
    List<LiveSection> copy = [];

    copy.addAll(body.data?.banner ?? []);
    copy.addAll(body.data?.areaEntranceV2 ?? []);
    copy.addAll(body.data?.activityCardV2 ?? []);
    copy.addAll(body.data?.myIdol ?? []);
    copy.addAll(body.data?.roomList ?? []);
    copy.addAll(body.data?.hourRank ?? []);

    _sections.clear();
    _sections
        .addAll(copy.where((test) => (test.list ?? []).isNotEmpty).toList());
    _sections
        .sort((lhs, rhs) => lhs.moduleInfo.sort.compareTo(rhs.moduleInfo.sort));

    if (this.mounted) {
      _refreshController.refreshCompleted();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Image.asset("assets/images/live_shoot58x58.png"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Container()));
        },
      ),
      body: SmartRefresher(
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: _initListView(),
        // header: Container(),
        onOffsetChange: ((a, b) {}),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }

  Widget _initListView() {
    return ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      // Add all live button with a item appended to list end.
      itemCount: _sections.length == 0 ? 0 : _sections.length + 1,
      itemBuilder: (context, index) {
        // EdgeInsets of contents.
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: spacing),
          child: index == _sections.length
              ? Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 44.0, bottom: spacing),
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
              : _initListItemView(_sections[index]),
        );
      },
    );
  }

  Widget _initListItemView(LiveSection section) {
    ModuleInfo module = section.moduleInfo;

    if (section is LiveSection<LiveAd>) {
      return BiliLiveListAdSectionView(
        advertisements: section,
      );
    } else if (section is LiveSection<LiveAreaEntrance>) {
      return BiliLiveListAreaSectionView(
        areas: section,
      );
    } else if (section is LiveSection<LiveActivity>) {
      return BiliLiveListActivitySectionView(
        activities: section,
      );
    } else if (section is LiveSection<LiveIdol>) {
      return SizedBox.shrink();
    } else if (section is LiveSection<LiveRank>) {
      return Column(
        children: <Widget>[
          BiliLiveListSectionHeaderView(
            module: module,
            title: module == null ? null : module.title,
            subtitle:
                section.extraInfo == null ? null : section.extraInfo.subtitle,
            onTap: (module) {},
          ),
          BiliLiveRankSectionView(
            section: section,
          ),
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          BiliLiveListSectionHeaderView(
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
          BiliLiveListPartitionView(
            partition: section,
          ),
          // Needs footer when id is equals to 3.
          module == null
              ? SizedBox.shrink()
              : (module.id == 3
                  ? BiliLiveListSectionFooterView(
                      module: module,
                      onTap: (module) {},
                    )
                  : SizedBox.shrink()),
        ],
      );
    }
  }
}
