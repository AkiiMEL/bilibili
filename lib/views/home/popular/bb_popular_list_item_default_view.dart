import 'package:bilibili/compenents/bb_tag_view.dart';
import 'package:bilibili/models/bb_featured_models.dart';
import 'package:bilibili/utils/bb_args.dart';
import 'package:bilibili/compenents/bb_network_image.dart';
import 'package:flutter/material.dart';

class BBPopularListItemDefaultView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _getPreview(context),
        _getPopularTipView(),
      ],
    );
  }

  Widget _getPreview(BuildContext context) {
    return Container(
      margin: defaultMargin,
      height: 100.0,
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(defaultMargin.top / 2),
            child: AspectRatio(
              aspectRatio: 13.0 / 9.0,
              child: BBNetworkImage(
                  "https://i1.hdslb.com/bfs/archive/2058be6aad46923dafce09df2be167424536df6e.jpg_380x240.jpg"),
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
                  "data",
                  style: Theme.of(context).textTheme.title,
                  maxLines: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    BBTagView(textAttributes: TextAttributesDefinitions(),),
                    Text(
                      "data",
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "data",
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

  Widget _getPopularTipView() {
    return Row(
      children: <Widget>[],
    );
  }
}
