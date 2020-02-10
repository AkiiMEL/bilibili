import 'package:bilibili/app/compenents/bb_entry_point_view.dart';
import 'package:bilibili/app/utils/bb_args.dart';
import 'package:flutter/material.dart';

class BBChannelListEditSection extends StatefulWidget {
  @override
  _BBChannelListEditSectionState createState() =>
      _BBChannelListEditSectionState();
}

class _BBChannelListEditSectionState
    extends State<BBChannelListEditSection> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, index) {
          return BBEntryPointView();
        },
        childCount: 8,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: defaultMargin.bottom,
        crossAxisSpacing: 1,
      ),
    );
  }
}
