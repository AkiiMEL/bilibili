import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../utils/bb_args.dart';
import '../api/bb_api.dart';
import '../models/bb_http_body.dart';
import '../models/bb_featured_body.dart';

import 'bb_featured_list_item_multiple_colum_view.dart';

class BBFeaturedListView extends StatefulWidget {
  BBFeaturedListView({Key key}) : super(key: key);

  @override
  _BBFeaturedListViewState createState() => _BBFeaturedListViewState();
}

class _BBFeaturedListViewState extends State<BBFeaturedListView>
    with AutomaticKeepAliveClientMixin {
  List<Media> _bangumis;
  RefreshController _refreshController;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _bangumis = [];
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
      child: SmartRefresher(
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          staggeredTileBuilder: (int index) {
            // If card type is equal to 'cm_v2' means this is an ad.
            // need more info to choose item type for each media.
            Media media = _bangumis[index];
            if (media.cardType == "cm_v2" && media?.adInfo?.cardType == 2) {
              return StaggeredTile.fit(2);
            }
            return StaggeredTile.fit(1);
          },
          itemBuilder: (BuildContext context, int index) {
            return BBFeaturedListItemMultipleColumView(
              media: _bangumis[index],
            );
          },
          itemCount: _bangumis.length,
          mainAxisSpacing: defaultMargin.left,
          crossAxisSpacing: defaultMargin.left,
          padding: defaultMargin,
        ),
      ),
    );
  }

  void _onRefresh() async {
    HttpBody<FeaturedBody> body = await BBApi.requestAllFeatured();

    _refreshController.refreshCompleted();

    setState(() {
      _bangumis = body?.data?.items?.toList() ?? [];
    });
  }
}
