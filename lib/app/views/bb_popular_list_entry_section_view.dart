import 'package:flutter/material.dart';

import 'package:bilibili/app/utils/bb_args.dart';
import 'package:bilibili/app/compenents/bb_network_image.dart';

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
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                child: BBNetworkImage(
                  // entries[i].pic,
                  null,
                  placeholder: defaultIMGPlaceholderName,
                ),
              ),
              SizedBox(height: defaultMargin.bottom),
              Text(
                // entries[i].title,
                "title",
                style: Theme.of(context).textTheme.subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      );
  }
}