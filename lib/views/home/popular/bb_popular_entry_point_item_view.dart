import 'package:bilibili/compenents/bb_network_image.dart';
import 'package:bilibili/utils/bb_args.dart';
import 'package:flutter/material.dart';

// Entry point view
class BBEPView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: BBNetworkImage(
                "",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: defaultMargin.top,
              ),
              child: Center(
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: BBNetworkImage(""),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: defaultMargin.bottom,
        ),
        Text("data"),
      ],
    );
  }
}
