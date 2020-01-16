import 'package:bilibili/models/bili_live_stream_models.dart';
import 'package:bilibili/utils/bili_args.dart';
import 'package:bilibili/compenents/bili_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BiliLiveStreamListActivitySectionView extends StatelessWidget {
  final LiveStreamSection<LiveStreamActivity> activities;

  BiliLiveStreamListActivitySectionView({this.activities});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: AspectRatio(
        aspectRatio: 375.0 / 60.0,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withAlpha(60)),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Swiper(
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomLeft: Radius.circular(5.0),
                          ),
                          child: BiliImage(
                            activities.list[index].logoUrl,
                            placeholder: "assets/images/default_img33x31.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: defaultMargin.left,
                      ),
                      Text.rich(
                        TextSpan(
                          text: activities.list[index].title ?? "",
                          children: [
                            TextSpan(text: '\n'),
                            TextSpan(
                                text: activities.list[index].timeText ?? "",
                                style: TextStyle(fontSize: 12.0)),
                          ],
                        ),
                      ),
                    ],
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
            itemCount: activities.list.length,
            autoplay: true,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
          ),
        ),
      ),
    );
  }
}
