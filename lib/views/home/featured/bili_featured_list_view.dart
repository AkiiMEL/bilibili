import 'package:bilibili/api/bili_live_api.dart';
import 'package:bilibili/models/bili_featured_models.dart';
import 'package:bilibili/utils/bili_args.dart';
import 'package:bilibili/views/home/featured/bili_featured_list_item.dart';
import 'package:bilibili/widgets/bili_pull_down_indicator_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class BiliFeaturedListView extends StatefulWidget {
  @override
  _BiliFeaturedListViewState createState() => _BiliFeaturedListViewState();
}

class _BiliFeaturedListViewState extends State<BiliFeaturedListView> {
  List<Object> _bangumis = [
  ];
  RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    _refreshController = RefreshController();
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
      backgroundColor: Colors.grey[100],
      body: SmartRefresher(
        header: BiliRefreshHeader(),
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          staggeredTileBuilder: _staggeredTileBuilder,
          itemBuilder: _itemBuilder,
          itemCount: _bangumis.length,
          mainAxisSpacing: spacing,
          crossAxisSpacing: spacing,
          padding: EdgeInsets.all(spacing),
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return BiliFeaturedListMultipleColumItem();
  }

  StaggeredTile _staggeredTileBuilder(int index) {
    return StaggeredTile.fit(1);
  }

  Future<void> _onRefresh() async {
    FeaturedBody body = await BiliApi.requestAllFeatured();
    List<Object> copy = [];

    if (this.mounted) {
      Future.delayed(Duration(seconds: 1), () {
        _refreshController.refreshCompleted();
        setState(() {});
      });
    }
  }
}
