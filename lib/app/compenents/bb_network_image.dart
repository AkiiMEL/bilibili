import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

class BBNetworkImage extends StatelessWidget {
  final String url;
  final String placeholder;
  final BoxFit fit;
  final Size size;
  final double aspectRatio;

  BBNetworkImage(
    this.url, {
    Key key,
    this.placeholder,
    this.fit = BoxFit.cover,
    this.size,
    this.aspectRatio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _aspectRatio(url?.isNotEmpty ?? false
        ? CachedNetworkImage(
            imageUrl: url,
            placeholder: ((context, url) => _box(placeholder)),
            width: size?.width,
            height: size?.height,
            fit: fit,
          )
        : _box(placeholder));
  }

  Widget _box(String placeholder) {
    return SizedBox.fromSize(
      size: size,
      child: placeholder?.isNotEmpty ?? false
          ? Image.asset(
              placeholder,
              fit: BoxFit.none,
            )
          : null,
    );
  }

  Widget _aspectRatio(Widget child) {
    return aspectRatio != null
        ? AspectRatio(
            aspectRatio: aspectRatio,
            child: child,
          )
        : child;
  }
}
