import 'package:flutter/material.dart';

import '../models/bb_models.dart';
import '../utils/bb_utils.dart';
import 'bb_bangumi_image.dart';

class BBBangumiCardView extends StatelessWidget {
  final BangumiListItem bangumi;
  final double aspectRatio;

  BBBangumiCardView(this.bangumi, {this.aspectRatio = 16.0 / 9.0});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BBBangumiImage(bangumi, aspectRatio:aspectRatio),
        SizedBox(height: defaultMargin.bottom / 2),
        Text(
          bangumi.title ?? "",
          maxLines: aspectRatio > 1 ? 1 : 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          bangumi.desc ?? "",
          style: Theme.of(context).textTheme.caption,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ],
    );
  }
  }