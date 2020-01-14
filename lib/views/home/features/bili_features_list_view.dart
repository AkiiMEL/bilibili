import 'package:bilibili/utils/bili_args.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BiliFeaturesListView extends StatefulWidget {
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
    return Scaffold(
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        staggeredTileBuilder: _staggeredTileBuilder,
        itemBuilder: _itemBuilder,
        itemCount: bangumis.length,
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      height: 64.0,
      color: Colors.black45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("${index}"),
        ],
      ),
    );
  }

  StaggeredTile _staggeredTileBuilder(int index) {
    return index % 2 == 1 ? StaggeredTile.fit(2) : StaggeredTile.fit(1);
  }
}
