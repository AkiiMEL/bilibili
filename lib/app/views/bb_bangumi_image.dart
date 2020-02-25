import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import '../utils/bb_utils.dart';
import '../compenents/bb_ui.dart';
import '../models/bb_bangumi_list_item.dart';

class BBBangumiImage extends StatelessWidget {
  final BangumiListItem bangumi;
  final double aspectRatio;

  BBBangumiImage(this.bangumi, {this.aspectRatio = 16.0 / 9.0});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: BBThumbnailView(
        url: bangumi.cover,
        borderRadius: BorderRadius.circular(5.0),
        topLeftView: bangumi.status != null
            ? Container(
                padding: EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                  ),
                ),
                child: Image.asset(
                  bangumi.status?.follow == 1
                      ? Images.bangumiFollowed
                      : Images.bangumiUnFollow,
                ),
              )
            : null,
        topRightView: Padding(
          padding: EdgeInsets.only(top: 2.0, right: 2.0),
          child: BBMediaTagView(
            contentInsets: EdgeInsets.symmetric(horizontal: 2.0),
            textAttributes: TextAttributes(
              (u) => u
                ..text = bangumi.badge
                ..textColor = "#FFFFFF"
                ..backgroundColor = "#F6749A",
            ),
          ),
        ),
        bottomLeftIconAndDescriptions: [
          Tuple2(null,
              bangumi.follow?.newEp?.indexShow ?? bangumi.stat?.followView)
        ],
      ),
    );
  }
}
