import 'package:flutter/material.dart';

import '../utils/bb_common.dart';
import '../compenents/bb_ad_view.dart';
import '../compenents/bb_network_image.dart';
import '../models/bb_live_group.dart';
import '../models/bb_live_activity.dart';

class BBLiveHomeActivityView extends StatelessWidget {
  final LiveGroup<LiveActivity> activities;

  BBLiveHomeActivityView({this.activities});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: defaultMargin.bottom * 2),
      child: BBAdView(
        aspectRatio: 375.0 / 60.0,
        border: Border.all(color: Colors.grey.withAlpha(60)),
        borderRadius: BorderRadius.circular(5.0),
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        advertise: activities?.list?.toList(),
        itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 1.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0),
                        ),
                        child: BBNetworkImage(
                          activities.list[index].logoUrl,
                          placeholder: Images.placeholder,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: defaultMargin.left,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            activities.list[index].title ?? "",
                            maxLines: 1,
                          ),
                          Text(
                            activities.list[index].timeText ?? "",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(right: defaultMargin.left),
                  padding: defaultMargin / 2,
                  decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    "去围观",
                    style: TextStyle(color: Colors.white, fontSize: 14.0),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
