import 'package:bilibili/app/compenents/bb_entry_point_view.dart';
import 'package:bilibili/app/compenents/bb_network_avatar_image.dart';
import 'package:bilibili/app/utils/bb_args.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BBChannelListPopularSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: defaultMargin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("热门频道", style: textTheme.title),
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Text("换一换", style: textTheme.subtitle),
                    Icon(Icons.rotate_left),
                  ],
                ),
                onTap: () {
                  print("RELOADING...");
                },
              ),
            ],
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(vertical: defaultMargin.bottom),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            itemBuilder: (BuildContext context, int index) {
              return BBEntryPointView();
            },
            itemCount: 5,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: defaultMargin,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  BBNetworkAvatarImage(
                    "",
                    placeholder: defaultAvatarName,
                    size: Size(
                      38.0,
                      38.0,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: defaultMargin.left),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("NICKNAME", style: textTheme.title),
                          Text("balabalabalabala......",
                              style: textTheme.display4),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultMargin.left * 2,
                        vertical: defaultMargin.top / 2,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Center(
                        child: Text(
                          "去看看",
                          style:
                              textTheme.subtitle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {
                      print("BUTTON CLICKED !!!");
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
