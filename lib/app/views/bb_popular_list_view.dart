import 'package:bilibili/app/views/bb_popular_list_entry_section_view.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:bilibili/app/utils/bb_args.dart';

import 'bb_popular_list_item_view.dart';
import 'bb_popular_list_item_idol_relative_media_view.dart';

class BBPopularListView extends StatefulWidget {
  @override
  _BBPopularListViewState createState() => _BBPopularListViewState();
}

class _BBPopularListViewState extends State<BBPopularListView>
    with AutomaticKeepAliveClientMixin {
  List<dynamic> _items;
  RefreshController _refreshController;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _items = [];
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
      bottom: false,
      child: SmartRefresher(
        controller: _refreshController,
        enablePullUp: true,
        onRefresh: _onRefresh,
        child: ListView.builder(
          padding: defaultMargin,
          itemBuilder: (BuildContext context, int index) {
            dynamic item = _items[index];
            if (item is List<String>) {
              return BBPopularListEntrySectionView(entries: item);
            } else if (item is List<dynamic>) {
              return BBPopularListItemIdolRelativeMediaView();
            } else {
              return BBPopularListItemView();
            }
          },
          itemCount: _items.length,
        ),
      ),
    );
  }

  void _onRefresh() async {
    _refreshController.refreshCompleted();

    if (mounted) {
      setState(() {
        _items = [
          ["", "", "", ""],
          "",
          "",
          "",
          "",
          "",
          "",
          [],
          "",
          "",
          "",
          "",
        ];
      });
    }
  }
}
