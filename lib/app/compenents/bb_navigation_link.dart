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
  final void Function() onTap;

  BBNavigationLink({
    this.rootNavigator = true,
    this.animation = BBNaviLinkAnimation.PUSH,
    this.destination,
    this.arguments,
    this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTapUp: (TapUpDetails d) {
        if (onTap != null) {
          onTap();
        }
        if (destination?.isEmpty ?? true) {
          return;
        }

        switch (animation) {
          case BBNaviLinkAnimation.PUSH:
          case BBNaviLinkAnimation.PRESENT:
            Navigator.of(context, rootNavigator: rootNavigator)
                .pushNamed(destination);
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
