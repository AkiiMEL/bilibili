import 'package:bilibili/models/bb_live_stream_models.dart';
import 'package:bilibili/compenents/bb_network_image.dart';
import 'package:bilibili/utils/bb_args.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BBLiveStreamListAdSectionView extends StatelessWidget {
  final LiveStreamSection<LiveStreamAd> advertisements;

  BBLiveStreamListAdSectionView({this.advertisements});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375.0 / 100.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Swiper(
          itemBuilder: (context, index) {
            return BBNetworkImage(
              advertisements.list[index].pic,
              placeholder: defaultIMGPlaceholderName,
            );
          },
          itemCount: advertisements.list.length,
          autoplay: true,
        ),
      ),
    );
  }
}
