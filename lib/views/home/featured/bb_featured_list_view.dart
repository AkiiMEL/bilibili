import 'package:bilibili/api/bb_api.dart';
import 'package:bilibili/models/bb_featured_models.dart';
import 'package:bilibili/utils/bb_args.dart';
import 'package:bilibili/views/home/featured/bb_featured_list_item_multiple_colum_view.dart';
import 'package:bilibili/compenents/bb_pull_down_indicator_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class BBFeaturedListView extends StatefulWidget {
  BBFeaturedListView({Key key}) : super(key: key);

  @override
  _BBFeaturedListViewState createState() => _BBFeaturedListViewState();
}

class _BBFeaturedListViewState extends State<BBFeaturedListView>
    with AutomaticKeepAliveClientMixin {
  List<Media> _bangumis = [];
  RefreshController _refreshController = RefreshController();

  @override
  bool get wantKeepAlive => true;

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
        header: BBRefreshHeader(),
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          staggeredTileBuilder: _staggeredTileBuilder,
          itemBuilder: _itemBuilder,
          itemCount: _bangumis.length,
          mainAxisSpacing: defaultMargin.left,
          crossAxisSpacing: defaultMargin.left,
          padding: defaultMargin,
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return BBFeaturedListItemMultipleColumView(
      media: _bangumis[index],
    );
  }

  StaggeredTile _staggeredTileBuilder(int index) {
    // If card type is equal to 'cm_v2' means this is an ad.
    // need more info to choose item type for each media.
    Media media = _bangumis[index];
    if (media.cardType == "cm_v2" && media?.adInfo?.cardType == 2) {
      return StaggeredTile.fit(2);
    }
    return StaggeredTile.fit(1);
  }

  Future<void> _onRefresh() async {
    FeaturedHttpBody body = await BBApi.requestAllFeatured();

    _bangumis = body.data.items ?? [];

    if (this.mounted) {
      Future.delayed(Duration(seconds: 1), () {
        _refreshController.refreshCompleted();
        setState(() {});
      });
    }
  }
}
