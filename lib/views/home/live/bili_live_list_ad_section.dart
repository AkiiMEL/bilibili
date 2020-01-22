import 'package:bilibili/models/bili_live_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BiliLiveListAdSectionView extends StatelessWidget {
  final LiveSection<LiveAd> advertisements;

  BiliLiveListAdSectionView({this.advertisements});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375.0 / 100.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Swiper(
          itemBuilder: (context, index) {
            return Container(
              child: Image.network(
                advertisements.list[index].pic ?? "",
                fit: BoxFit.cover,
              ),
            );
          },
          itemCount: advertisements.list.length,
          autoplay: true,
        ),
      ),
    );
  }
}
