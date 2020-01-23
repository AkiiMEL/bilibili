import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../utils/bb_args.dart';
import '../../../views/home/popular/bb_popular_list_item_default_view.dart';
import '../../../views/home/popular/bb_popular_list_item_idol_relative_media_view.dart';

class BBPopularListView extends StatefulWidget {
  BBPopularListView({Key key}) : super(key: key);

  @override
  _BBPopularListViewState createState() => _BBPopularListViewState();
}

class _BBPopularListViewState extends State<BBPopularListView>
    with AutomaticKeepAliveClientMixin {
  RefreshController _refreshController;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _refreshController = RefreshController(initialRefresh: true);
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
      body: SmartRefresher(
          controller: _refreshController,
          enablePullUp: true,
          onRefresh: _onRefresh,
          child: ListView.builder(
            padding: defaultMargin,
            itemBuilder: (BuildContext context, int index) {
              return index % 2 == 0
                  ? BBPopularListItemDefaultView()
                  : BBPopularListItemIdolRelativeMediaView();
            },
            itemCount: 10,
          )),
    );
  }

  void _onRefresh() {
    if (this.mounted) {
      _refreshController.refreshCompleted();
      setState(() {});
    }
  }
}
