import 'package:bilibili/app/routers/bb_route_mgr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum BBNaviLinkAnimation {
  PUSH,
  POP,
  PRESENT,
  DISMISS,
}

class BBNavigationLink extends StatelessWidget {
  final bool rootNavigator;
  final String destination;
  final BBNaviLinkAnimation animation;
  final Object arguments;
  final Widget child;

  BBNavigationLink({
    this.rootNavigator = true,
    this.animation = BBNaviLinkAnimation.PUSH,
    this.destination,
    this.arguments,
    this.child,
  }) : assert(destination != null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTapUp: (TapUpDetails d) {
        print("CLICKED !!!");
        switch (animation) {
          case BBNaviLinkAnimation.PUSH:
          case BBNaviLinkAnimation.PRESENT:
            Navigator.of(context, rootNavigator: rootNavigator).pushNamed(destination);
            break;
          case BBNaviLinkAnimation.POP:
          case BBNaviLinkAnimation.DISMISS:
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
            break;
        }
      },
      behavior: HitTestBehavior.opaque,
    );
  }
}
