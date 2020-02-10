import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BBNetworkImage extends StatelessWidget {
  final String imageURL;
  final String placeholder;
  final BoxFit fit;
  final Size size;

  BBNetworkImage(this.imageURL,
      {this.placeholder, this.fit = BoxFit.cover, this.size});

  @override
  Widget build(BuildContext context) {
    return imageURL == null || imageURL.isEmpty
        ? SizedBox.fromSize(
            size: size,
            child: placeholder == null || placeholder.isEmpty
                ? null
                : Image.asset(placeholder),
          )
        : CachedNetworkImage(
            imageUrl: imageURL,
            placeholder: ((context, url) => SizedBox.fromSize(
                  size: size,
                  child: placeholder == null || placeholder.isEmpty
                      ? null
                      : Image.asset(placeholder),
                )),
            errorWidget: ((context, url, e) => SizedBox.fromSize(
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
