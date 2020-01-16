import 'package:bilibili/utils/bili_args.dart';
import 'package:bilibili/views/home/popular/bili_popular_list_item_default_view.dart';
import 'package:bilibili/views/home/popular/bili_popular_list_item_idol_relative_media_view.dart';
import 'package:bilibili/compenents/bili_pull_down_indicator_view.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class BiliPopularListView extends StatefulWidget {
  BiliPopularListView({Key key}) : super(key: key);

  @override
  _BiliPopularListViewState createState() => _BiliPopularListViewState();
}

class _BiliPopularListViewState extends State<BiliPopularListView> {
  RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    _onRefresh();
    super.initState();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        controller: _refreshController,
        enablePullUp: true,
        onRefresh: _onRefresh,
        header: BiliRefreshHeader(),
        child: ListView.builder(
          padding: defaultMargin,
          itemBuilder: (BuildContext context, int index) {
            return index % 2 == 0 ? BiliPopularListItemDefaultView() : BiliPopularListItemIdolRelativeMediaView();
          },
          itemCount: 10,
        )
      ),
    );
  }

  void _onRefresh() {
    if (this.mounted) {
      _refreshController.refreshCompleted();
      setState(() {});
    }
  }
}
