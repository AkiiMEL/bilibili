import 'package:flutter/widgets.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class BiliRefreshHeader extends RefreshIndicator {
  BiliRefreshHeader() : super(height: 60.0, refreshStyle: RefreshStyle.Follow);

  @override
  _BiliRefreshHeaderState createState() => _BiliRefreshHeaderState();
}

class _BiliRefreshHeaderState extends RefreshIndicatorState<BiliRefreshHeader>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<int> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = IntTween(begin: 1, end: 4).animate(_controller);
    super.initState();
  }

  @override
  void onModeChange(RefreshStatus mode) {
    if (mode == RefreshStatus.refreshing) {
      _controller.repeat();
    }
    super.onModeChange(mode);
  }

  @override
  Future<void> endRefresh() {
    return _controller.animateTo(0, duration: Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget buildContent(BuildContext context, RefreshStatus mode) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget child) {
        return Image.asset(
          "assets/images/pull_loading_${_animation.value}60x60.png",
          width: 60.0,
          height: 60.0,
        );
      },
    );
  }
}
