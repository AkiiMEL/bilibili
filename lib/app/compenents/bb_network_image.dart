import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BBNetworkImage extends StatelessWidget {
  final String url;
  final String placeholder;
  final BoxFit fit;
  final Size size;

  BBNetworkImage(this.url,
      {this.placeholder, this.fit = BoxFit.cover, this.size});

  @override
  Widget build(BuildContext context) {
    return url == null || url.isEmpty
        ? SizedBox.fromSize(
            size: size,
            child: placeholder == null || placeholder.isEmpty
                ? null
                : Image.asset(placeholder),
          )
        : CachedNetworkImage(
            imageUrl: url,
            placeholder: ((context, url) => SizedBox.fromSize(
                  size: size,
                  child: placeholder == null || placeholder.isEmpty
                      ? null
                      : Image.asset(placeholder),
                )),
            width: size?.width == double.infinity ? null : size?.width,
            height: size?.height == double.infinity ? null : size?.height,
            fit: fit,
          );
  }
}
