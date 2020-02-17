import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BBAdView<Ad> extends StatelessWidget {
  final List<Ad> advertise;
  final Widget Function(BuildContext, int) itemBuilder;
  final double aspectRatio;
  final BorderRadius borderRadius;
  final Axis scrollDirection;

  BBAdView({
    this.advertise,
    this.aspectRatio,
    this.borderRadius,
    this.scrollDirection = Axis.horizontal,
    this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return aspectRatio != null
        ? AspectRatio(
            aspectRatio: aspectRatio,
            child: _swiper(),
          )
        : _swiper();
  }

  Widget _swiper() {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: Swiper(
        scrollDirection: scrollDirection,
        itemBuilder: itemBuilder,
        itemCount: advertise?.length ?? 0,
        autoplay: true,
      ),
    );
  }
}
