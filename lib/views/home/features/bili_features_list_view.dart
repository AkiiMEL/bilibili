import 'package:bilibili/utils/bili_args.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BiliFeaturesListView extends StatefulWidget {
  BiliFeaturesListView({Key key}) : super(key: key);

  @override
  _BiliFeaturesListViewState createState() => _BiliFeaturesListViewState();
}

class _BiliFeaturesListViewState extends State<BiliFeaturesListView> {
  List<Object> bangumis = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: StaggeredGridView.builder(
        padding: EdgeInsets.all(spacing),
        gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          staggeredTileBuilder: _staggeredTileBuilder,
        ),
        itemBuilder: _itemBuilder,
        itemCount: bangumis.length,
      ),
    );
  }

  StaggeredTile _staggeredTileBuilder(int index) {
    return StaggeredTile.count(2, 2);
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Container();
  }
}
