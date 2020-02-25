import 'package:flutter/material.dart';

import '../models/bb_bangumi_list_item.dart';
import '../utils/bb_utils.dart';
import 'bb_bangumi_image.dart';

class BBBangumiRankRow extends StatelessWidget {
  final BangumiListItem bangumi;
  final int rank;

  BBBangumiRankRow(this.bangumi, this.rank);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 12.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BBBangumiImage(bangumi, aspectRatio: 16.0 / 9.0),
          SizedBox(width: defaultMargin.left),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  bangumi.title ?? "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  bangumi.pts ?? "",
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
          SizedBox(width: defaultMargin.left),
          Image.asset(Images.rank(rank)),
        ],
      ),
    );
  }
}
