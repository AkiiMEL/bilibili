import 'package:flutter/material.dart';

import 'package:bilibili/app/utils/bb_common.dart';
import 'package:bilibili/app/compenents/bb_network_image.dart';

// entry point view
class BBEntryPointView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.0,
                child: BBNetworkImage(
                  "",
                  placeholder: Images.placeholder,
                ),
              ),
              // Positioned(
              //   top: 0,
              //   left: ...,
              //   child: BBMediaTagView(
              //     textAttributes: TextAttributesDefinitions(
              //       text: "some",
              //       textColor: "#000000",
              //       backgroundColor: "#70d9b8",
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        SizedBox(
          height: defaultMargin.bottom / 2,
        ),
        Text("title", style: Theme.of(context).textTheme.title),
      ],
    );
  }
}
