import 'package:flutter/material.dart';

import 'package:bilibili/app/compenents/bb_network_avatar_image.dart';
import 'package:bilibili/app/compenents/bb_media_tag_view.dart';
import 'package:bilibili/app/models/bb_featured_models.dart';
import 'package:bilibili/app/utils/bb_args.dart';

import 'bb_popular_list_item_idol_relative_media_item_view.dart';

class BBPopularListItemIdolRelativeMediaView extends StatefulWidget {
  @override
  _BBPopularListItemIdolRelativeMediaViewState createState() =>
      _BBPopularListItemIdolRelativeMediaViewState();
}

class _BBPopularListItemIdolRelativeMediaViewState
    extends State<BBPopularListItemIdolRelativeMediaView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: defaultMargin.top),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                BBNetworkAvatarImage(
                  defaultAvatarURL,
                  placeholder: defaultAvatarName,
                  size: Size(40.0, 40.0),
                ),
                SizedBox(
                  width: defaultMargin.left,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "data",
                      style: Theme.of(context).textTheme.title,
                    ),
                    BBMediaTagView(
                      textAttributes: TextAttributesDefinitions(),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin.left * 1.5,
                    vertical: defaultMargin.top / 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).accentColor),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Center(
                  child: Text(
                    "+ 关注",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: Theme.of(context).accentColor),
                  ),
                ),
              ),
              onTap: () {
                print("Follow button clicked.");
              },
            ),
          ],
        ),
        SizedBox(height: defaultMargin.top),
        Container(
          height: 140,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 10.0 / 9.0,
              crossAxisCount: 1,
              mainAxisSpacing: defaultMargin.left,
            ),
            itemBuilder: (BuildContext context, int index) {
              return BBPopularListItemIdolRelativeMediaItemView();
            },
            itemCount: 10,
          ),
        ),
        Divider(),
      ],
    );
  }
}
