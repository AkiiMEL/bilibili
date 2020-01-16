import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BiliImage extends StatelessWidget {
  final String imageURL;
  final String placeholder;
  final BoxFit fit;
  // if radius is given, size will be ignored and will return an circle image with radius.
  final double radius;
  final Size size;

  BiliImage(this.imageURL,
      {this.placeholder,
      this.fit,
      this.radius,
      this.size});

  @override
  Widget build(BuildContext context) {
    if (imageURL == null || imageURL.isEmpty) return SizedBox.shrink();
    CachedNetworkImage child = CachedNetworkImage(
      imageUrl: imageURL,
      placeholder: ((context, url) =>
          placeholder != null ? Image.asset(placeholder) : SizedBox.shrink()),
      errorWidget: ((context, url, e) =>
          placeholder != null ? Image.asset(placeholder) : SizedBox.shrink()),
      width: radius != null ? radius * 2 : (size?.width == double.infinity ? null : size?.width),
      height: radius != null ? radius * 2 : (size?.height == double.infinity ? null : size?.height),
      fit: fit ?? BoxFit.cover,
    );

    return radius != null
        ? ClipOval(
            child: child,
          )
        : child;
  }
}
