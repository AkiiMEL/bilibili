import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../utils/bb_args.dart';
import '../../../api/bb_api.dart';
import '../../../models/bb_featured_models.dart';
import '../../../views/home/featured/bb_featured_list_item_multiple_colum_view.dart';


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
    _refreshController = RefreshController(initialRefresh: true);
    super.initState();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SmartRefresher(
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

  void _onRefresh() async {
    FeaturedHttpBody body = await BBApi.requestAllFeatured();

    _bangumis = body.data.items ?? [];

    if (mounted) {
      _refreshController.refreshCompleted();
      setState(() {});
    }
  }
}
