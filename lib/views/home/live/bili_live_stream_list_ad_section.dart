import 'package:bilibili/models/bili_live_stream_models.dart';
import 'package:bilibili/compenents/bili_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BiliLiveStreamListAdSectionView extends StatelessWidget {
  final LiveStreamSection<LiveStreamAd> advertisements;

  BiliLiveStreamListAdSectionView({this.advertisements});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375.0 / 100.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Swiper(
          itemBuilder: (context, index) {
            return BiliImage(
              advertisements.list[index].pic,
              placeholder: "assets/images/default_img33x31.png",
            );
          },
          itemCount: advertisements.list.length,
          autoplay: true,
        ),
      ),
    );
  }
}
