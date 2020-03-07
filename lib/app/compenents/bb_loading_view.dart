import 'package:flutter/material.dart';

class BBLoadingView extends StatefulWidget {
  @override
  _BBLoadingViewState createState() => _BBLoadingViewState();
}

class _BBLoadingViewState extends State<BBLoadingView>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<int> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600))
      ..repeat();
    _animation = IntTween(begin: 1, end: 3)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller = null;
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _animation,
        builder: (BuildContext context, Widget child) {
          String frame = _animation.value.toString();
          return Image.asset(
            'assets/images/loading_${frame}280x158.png',
            gaplessPlayback: true,
          );
        },
      ),
    );
  }
}
