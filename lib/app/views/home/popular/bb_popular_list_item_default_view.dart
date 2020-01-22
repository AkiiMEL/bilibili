
import 'package:flutter/material.dart';

import 'package:bilibili/app/compenents/bb_media_preview_view.dart';
import 'package:bilibili/app/compenents/bb_tag_view.dart';
import 'package:bilibili/app/models/bb_featured_models.dart';
import 'package:bilibili/app/utils/bb_args.dart';

class BBPopularListItemDefaultView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _getPreviewAndDescriptionView(context),
        Divider(),
      ],
    );
  }

  Widget _getPreviewAndDescriptionView(BuildContext context) {
    return Container(
      height: 80.0,
      margin: defaultMargin.copyWith(left: 0, right: 0),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(defaultMargin.top / 2),
            child: AspectRatio(
              aspectRatio: 8.0 / 5.0,
              child: BBMediaPreviewView(
                url:
                    "https://i0.hdslb.com/bfs/archive/363aa721e698dca557ea7aabd556476e625fcbe4.jpg@320w_200h.jpg",
                bottomRightView: BBTagView(
                    textAttributes: TextAttributesDefinitions(
                        text: "2:14", textColor: "#FFFFFF")),
              ),
            ),
          ),
          SizedBox(
            width: defaultMargin.left,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "看好了这才是体术与剑术的极致巅峰！",
                  style: Theme.of(context).textTheme.title,
                  maxLines: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    BBTagView(
                      textAttributes: TextAttributesDefinitions(),
                    ),
                    Text(
                      "努力的小青",
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "7.9万观看•01-12",
                          style: Theme.of(context).textTheme.subtitle,
                        ),
                        Image.asset(
                            "assets/images/pegasus_card_vertical_more16x16.png"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
