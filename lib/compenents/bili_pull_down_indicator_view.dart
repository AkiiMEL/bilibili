import 'package:flutter/widgets.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AnimationImages extends AnimatedWidget {
  final List<String> imageURLs;
  final Animation<int> animation;
  final Size size;

  AnimationImages({Key key, this.imageURLs, this.animation, this.size})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Animation<int> animation = listenable;
    return Image.asset(
      imageURLs[animation.value],
      width: size.width,
      height: size.height,
      gaplessPlayback: true,
    );
  }
}

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
      duration: Duration(seconds: 1),
    );
    _animation = IntTween(begin: 0, end: 3)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
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
    return AnimationImages(
      imageURLs: [
        "assets/images/pull_loading_160x60.png",
        "assets/images/pull_loading_260x60.png",
        "assets/images/pull_loading_360x60.png",
        "assets/images/pull_loading_460x60.png"
      ],
      animation: _animation,
      size: Size(60.0, 60.0),
    );
  }
}
