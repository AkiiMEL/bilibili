import 'package:flutter/material.dart';

import 'package:bilibili/app/utils/bb_args.dart';
import 'package:bilibili/app/compenents/bb_network_image.dart';

// entry point view
class BBEntryPointView extends StatelessWidget {
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
