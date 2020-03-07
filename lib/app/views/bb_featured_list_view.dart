import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../compenents/bb_ui.dart';
import '../utils/bb_args.dart';
import '../models/bb_media.dart';
import '../blocs/bb_featured_bloc.dart';

import 'bb_featured_list_item_multiple_colum_view.dart';

class BBFeaturedListView extends StatefulWidget {
  BBFeaturedListView({Key key}) : super(key: key);

  @override
  _BBFeaturedListViewState createState() => _BBFeaturedListViewState();
}

class _BBFeaturedListViewState extends State<BBFeaturedListView>
    with AutomaticKeepAliveClientMixin {
  RefreshController _refreshController;
  BBFeaturedBLoC _bLoC;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _refreshController = RefreshController();
    _bLoC = BBFeaturedBLoC()..add(Load());
  }

  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder(
      bloc: _bLoC,
      builder: (BuildContext context, LoadState state) {
        Widget subview;
        if (state is Loading) {
          subview = BBLoadingView();
        } else if (state is Success) {
          _refreshController.refreshCompleted();
          subview = SmartRefresher(
            controller: _refreshController,
            onRefresh: () => _bLoC.add(Load()),
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              staggeredTileBuilder: (int index) {
                // If card type is equal to 'cm_v2' means this is an ad.
                // need more info to choose item type for each media.
                Media media = state.value[index];
                if (media.cardType == "cm_v2" &&
                    media?.adInfo?.cardType == 2) {
                  return StaggeredTile.fit(2);
                }
                return StaggeredTile.fit(1);
              },
              itemBuilder: (BuildContext context, int index) {
                return BBFeaturedListItemMultipleColumView(
                  media: state.value[index],
                );
              },
              itemCount: state.value.length,
              mainAxisSpacing: defaultMargin.left,
              crossAxisSpacing: defaultMargin.left,
              padding: defaultMargin,
            ),
          );
        } else {
          _refreshController.refreshCompleted();
          subview = Container();
        }
        return SafeArea(bottom: false, child: subview);
      },
    );
  }
}
