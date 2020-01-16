import 'package:flutter/material.dart';

import 'package:bilibili/compenents/bb_network_image.dart';

class BBNetworkAvatarImage extends StatelessWidget {
  final String url;
  final String placeholder;
  final String pendantUrl;
  final Size size;
  final void Function() onTap;

  BBNetworkAvatarImage(this.url,
      {this.placeholder, this.pendantUrl, this.onTap, this.size});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: pendantUrl == null || pendantUrl.isEmpty
          ? ClipOval(
              child: BBNetworkImage(
                url,
                placeholder: placeholder,
                size: size,
              ),
            )
          : Stack(
              alignment: Alignment.center,
              children: <Widget>[
                BBNetworkImage(
                  pendantUrl,
                  size: size,
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  child: ClipOval(
                    child: BBNetworkImage(
                      url,
                      placeholder: placeholder,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
