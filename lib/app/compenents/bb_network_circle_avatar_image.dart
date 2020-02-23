import 'dart:math';
import 'package:flutter/material.dart';

import 'package:bilibili/app/utils/bb_assets.dart';
import 'bb_network_image.dart';

export 'bb_network_image.dart';

class BBNetworkCircleAvatarImage extends StatelessWidget {
  final String url;
  final String placeholder;
  final String pendant;
  final Widget extra;
  final double radius;
  final void Function() onTap;

  BBNetworkCircleAvatarImage(
    this.url, {
    this.placeholder = Images.defaultAvatar,
    this.pendant,
    this.onTap,
    this.extra,
    this.radius,
  }) : assert(radius != null);

  @override
  Widget build(BuildContext context) {
    Size size = Size(radius * 2, radius * 2);
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: _children(context, size),
      ),
    );
  }

  List<Widget> _children(BuildContext context, Size size) {
    List<Widget> children = [];

    children.add(ClipOval(
      child: BBNetworkImage(
        url,
        placeholder: placeholder,
        size: size,
      ),
    ));

    if (pendant?.isNotEmpty ?? false) {
      children.add(BBNetworkImage(
        pendant,
        size: size * 1.7,
      ));
    }

    if (extra != null) {
      children.add(Positioned(
        bottom: radius * 1.7 - sin(45 * pi / 180) * radius * 1.7,
        right: radius * 1.7 - sin(45 * pi / 180) * radius * 1.7,
        child: extra,
      ));
    }
    return children;
  }
}
