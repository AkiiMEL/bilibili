import 'package:bilibili/compenents/bili_tag_view.dart';
import 'package:bilibili/models/bili_featured_models.dart';
import 'package:bilibili/utils/bili_args.dart';
import 'package:bilibili/compenents/bili_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BiliPopularListItemIdolRelativeMediaView extends StatefulWidget {
  @override
  _BiliPopularListItemIdolRelativeMediaViewState createState() =>
      _BiliPopularListItemIdolRelativeMediaViewState();
}

class _BiliPopularListItemIdolRelativeMediaViewState
    extends State<BiliPopularListItemIdolRelativeMediaView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                BiliImage("", radius: 20.0),
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
                    BiliTagView(
                      textAttributes: TextAttributesDefinitions(),
                    ),
                  ],
                ),
              ],
            ),
            CupertinoButton(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin.left,
                  vertical: defaultMargin.top / 2),
              child: Center(
                child: Text("+ 关注"),
              ),
              borderRadius: BorderRadius.circular(2.0),
              onPressed: () {
                print("Follow button clicked.");
              },
            ),
          ],
        ),
        Container(
          height: 100,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: defaultMargin.left,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.orange,
              );
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
