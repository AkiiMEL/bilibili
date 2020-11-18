import 'package:flutter/material.dart';

import '../utils/bb_args.dart';
import '../utils/bb_utils.dart';
import '../compenents/bb_ui.dart';

class BBPopularListEntrySectionView extends StatelessWidget {

  final List<dynamic> entries;
  BBPopularListEntrySectionView({this.entries});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin.left),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1,
            crossAxisSpacing: defaultMargin.left * 2,
            mainAxisSpacing: defaultMargin.top),
        itemCount: entries.length,
        itemBuilder: (context, i) {
          return BBAppView(
                      title: "e.title",
                      image: "e.pic",
                      imageSize: Size(44.0, 44.0),
                    );
        },
      );
  }
}