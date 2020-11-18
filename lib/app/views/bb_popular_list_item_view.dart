import 'package:flutter/material.dart';

import '../compenents/bb_media_thumbnail_view.dart';
import '../compenents/bb_media_tag_view.dart';
import '../utils/bb_args.dart';

class BBPopularListItemView extends StatefulWidget {
  @override
  _BBPopularListItemViewState createState() => _BBPopularListItemViewState();
}

class _BBPopularListItemViewState extends State<BBPopularListItemView> {
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
      height: 94.0,
      margin: defaultMargin.copyWith(left: 0, right: 0),
      child: Row(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 8.0 / 5.0,
            child: BBThumbnailView(
              url:
                  "https://i0.hdslb.com/bfs/archive/363aa721e698dca557ea7aabd556476e625fcbe4.jpg@320w_200h.jpg",
              bottomRightView: BBMediaTagView(
                textAttributes: TextAttributes((b) => b
                  ..text = "2:14"
                  ..textColor = "#FFFFFF"),
              ),
              borderRadius: BorderRadius.circular(defaultMargin.top / 2),
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
                  maxLines: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        BBMediaTagView(
                          textAttributes: TextAttributes((b) => b
                            ..text = "百万播放"
                            ..textColor = "#F69E67"
                            ..borderColor = "#F69E67"),
                        ),
                      ],
                    ),
                    Text(
                      "努力的小青",
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "7.9万观看•01-12",
                          style: Theme.of(context).textTheme.caption,
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
