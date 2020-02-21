import 'package:flutter/material.dart';

import '../../app/utils/bb_common.dart';
import 'bb_related_media_list_view.dart';

class BBMediaView extends StatefulWidget {
  @override
  _BBMediaViewState createState() => _BBMediaViewState();
}

class _BBMediaViewState extends State<BBMediaView>
    with SingleTickerProviderStateMixin {
  TabController _tabCtr;

  @override
  void initState() {
    super.initState();

    _tabCtr = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        maintainBottomViewPadding: true,
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 200.0,
                left: 0.0,
                bottom: 0.0,
                right: 0.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: defaultMargin.left),
                      height: 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: TabBar(
                              isScrollable: true,
                              tabs: <Widget>[
                                Tab(
                                  child: Text(
                                    "简介",
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                ),
                                Tab(
                                  child: Text.rich(
                                    TextSpan(
                                      text: "评论",
                                      style: TextStyle(fontSize: 14.0),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: " 1234",
                                          style: TextStyle(fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                              labelPadding: EdgeInsets.symmetric(
                                  horizontal: defaultMargin.left * 2),
                              controller: _tabCtr,
                            ),
                          ),
                          BBDanmakuComposeButton(),
                        ],
                      ),
                    ),
                    Expanded(
                        child: TabBarView(
                      children: <Widget>[
                        BBRelatedMediaListView(),
                        Container(),
                      ],
                      controller: _tabCtr,
                    )),
                  ],
                ),
              ),
              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                height: 200,
                child: Container(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BBDanmakuComposeButton extends StatefulWidget {
  final double radius = 16.0;
  final bool on = false;

  @override
  _BBDanmakuComposeButtonState createState() => _BBDanmakuComposeButtonState();
}

class _BBDanmakuComposeButtonState extends State<BBDanmakuComposeButton>
    with SingleTickerProviderStateMixin {
  bool on;

  AnimationController _animation;
  Animation _widthAnimation;
  Animation _opacityAnimation;
  @override
  void initState() {
    super.initState();
    on = widget.on;
    _animation = AnimationController(
        value: on ? 1 : 0, duration: Duration(milliseconds: 100), vsync: this);
    _widthAnimation =
        Tween(begin: widget.radius * 2.5 + 2, end: 140.0).animate(_animation);
    _opacityAnimation = Tween(begin: 0.0, end: 1.0).animate(_animation);
    _animation.addListener(_listener);
  }

  @override
  void dispose() {
    super.dispose();
    _animation.removeListener(_listener);
    _animation.dispose();
  }

  void _listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      width: _widthAnimation.value,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(color: Colors.grey[200]),
        borderRadius: BorderRadius.circular(widget.radius),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Opacity(
                  opacity: _opacityAnimation.value,
                  child: Text(
                    on ? "点我发弹幕" : "",
                    maxLines: 1,
                  )),
            ),
          ),
          GestureDetector(
            child: Container(
              width: widget.radius * 2.5,
              decoration: BoxDecoration(
                color: on ? Colors.white : Colors.transparent,
                borderRadius: on
                    ? BorderRadius.only(
                        topRight: Radius.circular(widget.radius),
                        bottomRight: Radius.circular(widget.radius),
                      )
                    : BorderRadius.circular(widget.radius),
              ),
              child: Center(
                  child:
                      Image.asset(on ? Images.danmakuOn : Images.danmakuOff)),
            ),
            onTap: () {
              setState(() {
                on = !on;
                on ? _animation.forward() : _animation.reverse();
              });
            },
            behavior: HitTestBehavior.opaque,
          ),
        ],
      ),
    );
  }
}
