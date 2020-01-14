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
    super.initState();
    _onRefresh();
  }

  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        controller: _refreshController,
        enablePullUp: true,
        onRefresh: _onRefresh,
        child: Container(),
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
