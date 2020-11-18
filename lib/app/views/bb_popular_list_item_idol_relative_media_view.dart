import 'package:flutter/material.dart';

import '../utils/bb_args.dart';
import '../utils/bb_utils.dart';
import '../compenents/bb_ui.dart';
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
                BBNetworkCircleAvatarImage(
                  "",
                  placeholder: Images.defaultAvatar,
                  radius: 20.0,
                ),
                SizedBox(
                  width: defaultMargin.left,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("data"),
                    BBMediaTagView(
                      textAttributes: TextAttributes(),
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
                        .button
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
