import 'package:bilibili/compenents/bb_tag_view.dart';
import 'package:bilibili/models/bb_featured_models.dart';
import 'package:bilibili/utils/bb_args.dart';
import 'package:bilibili/compenents/bb_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                BBNetworkImage("", radius: 20.0),
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
                    BBTagView(
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
