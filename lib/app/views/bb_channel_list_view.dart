import 'package:bilibili/app/views/bb_channel_list_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bilibili/app/utils/bb_args.dart';
import 'package:bilibili/app/views/bb_channel_list_edit_section.dart';
import 'package:bilibili/app/views/bb_channel_list_history_section.dart';
import 'package:bilibili/app/views/bb_channel_list_popular_section.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class BBChannelListView extends StatefulWidget {
  @override
  _BBChannelListViewState createState() => _BBChannelListViewState();
}

class _BBChannelListViewState extends State<BBChannelListView> {
  RefreshController _refreshController;

  @override
  void initState() {
    super.initState();
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
      child: SmartRefresher(
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(child: _searchBar()),
            BBChannelListEditSection(),
            SliverToBoxAdapter(child: _separatorLine()),
            SliverToBoxAdapter(child: _subscription(context)),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    BBChannelListSection(),
                    index != 2 ? Divider() : _separatorLine(),
                  ],
                );
              },
              childCount: 3,
            )),
            SliverToBoxAdapter(child: BBChannelListHistorySection()),
            SliverToBoxAdapter(child: _separatorLine()),
            SliverToBoxAdapter(child: BBChannelListPopularSection()),
            SliverToBoxAdapter(child: BBChannelListSection()),
            SliverToBoxAdapter(child: Divider(indent: defaultMargin.left)),
            SliverToBoxAdapter(child: BBChannelListSection()),
            SliverToBoxAdapter(child: Divider(indent: defaultMargin.left)),
            SliverToBoxAdapter(child: BBChannelListSection()),
            SliverToBoxAdapter(child: Divider(indent: defaultMargin.left)),
            SliverToBoxAdapter(child: BBChannelListSection()),
            SliverToBoxAdapter(child: Divider(indent: defaultMargin.left)),
            SliverToBoxAdapter(child: BBChannelListSection()),
          ],
        ),
      ),
    );
  }

  Widget _separatorLine() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin.top),
      color: Colors.grey[100],
      height: defaultMargin.bottom,
    );
  }

  Widget _searchBar() {
    return Padding(
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
    );
  }

  Widget _subscription(BuildContext context) {
    return Padding(
      padding: defaultMargin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("我订阅的2个频道有更新", style: Theme.of(context).textTheme.title),
          GestureDetector(
            child: Row(
              children: <Widget>[
                Text("管理订阅 5", style: Theme.of(context).textTheme.title),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
    _refreshController.refreshCompleted();
    setState(() {});
  }
}
