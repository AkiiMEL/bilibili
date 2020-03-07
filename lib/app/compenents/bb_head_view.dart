import 'package:bilibili/app/compenents/bb_ui.dart';
import 'package:flutter/material.dart';

import '../utils/bb_utils.dart';

class BBHeadView extends StatelessWidget {
  final String title;
  final Widget leading;
  final String accessory;
  final String image;
  final Widget accessoryView;
  final String destination;
  final Object arguments;
  final void Function() onTap;
  final Widget trailing;

  BBHeadView({
    Key key,
    this.title,
    this.destination,
    this.arguments,
    this.onTap,
    this.accessory = "查看更多",
    this.image = Images.rightArrow,
    this.accessoryView,
    this.leading,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        leading ?? Text(title ?? "", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
        BBNavigationLink(
          destination: destination,
          arguments: arguments,
          onTap: onTap,
          child: Row(
            children: <Widget>[
              accessoryView ?? Text(this.accessory ?? "", style: TextStyle(fontSize: 12.0),),
              image != null ? Image.asset(image) : SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }
}
