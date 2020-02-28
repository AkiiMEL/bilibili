import 'package:flutter/widgets.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class BBRefreshHeader extends RefreshIndicator {
  BBRefreshHeader() : super(height: 60.0, refreshStyle: RefreshStyle.Follow);

  @override
  _BBRefreshHeaderState createState() => _BBRefreshHeaderState();
}

class _BBRefreshHeaderState extends RefreshIndicatorState<BBRefreshHeader>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<int> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    _animation = IntTween(begin: 1, end: 4)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    super.initState();
  }

  @override
  void onModeChange(RefreshStatus mode) {
    if (mode == RefreshStatus.canRefresh && !_controller.isAnimating) {
      _controller.repeat();
    } else if (mode == RefreshStatus.idle) {
      _controller.reset();
    }
    super.onModeChange(mode);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget buildContent(BuildContext context, RefreshStatus mode) {
    return SizedBox(
      width: 60.0,
      height: 60.0,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (BuildContext context, Widget child) {
          String frame = _animation.value.toString();
          return Image.asset(
            "assets/images/pull_loading_${frame}60x60.png",
            gaplessPlayback: true,
          );
        },
      ),
    );
  }
}
