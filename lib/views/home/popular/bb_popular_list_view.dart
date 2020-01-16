import 'package:bilibili/utils/bb_args.dart';
import 'package:bilibili/views/home/popular/bb_popular_list_item_default_view.dart';
import 'package:bilibili/views/home/popular/bb_popular_list_item_idol_relative_media_view.dart';
import 'package:bilibili/compenents/bb_pull_down_indicator_view.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class BBPopularListView extends StatefulWidget {
  BBPopularListView({Key key}) : super(key: key);

  @override
  _BBPopularListViewState createState() => _BBPopularListViewState();
}

class _BBPopularListViewState extends State<BBPopularListView> with AutomaticKeepAliveClientMixin {
  RefreshController _refreshController = RefreshController();

  @override
  bool get wantKeepAlive => true;

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
        header: BBRefreshHeader(),
        child: ListView.builder(
          padding: defaultMargin,
          itemBuilder: (BuildContext context, int index) {
            return index % 2 == 0 ? BBPopularListItemDefaultView() : BBPopularListItemIdolRelativeMediaView();
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
