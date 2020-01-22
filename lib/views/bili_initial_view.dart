import 'package:flutter/material.dart';

import 'package:bilibili/views/home/bili_home_view.dart';

class BiliInitialView extends StatefulWidget {
  @override
  _BiliInitialViewState createState() => _BiliInitialViewState();
}

class _BiliInitialViewState extends State<BiliInitialView> {
  List<BottomNavigationBarItem> tabBarItems;
  List<Widget> views;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabBarItems = [
      BottomNavigationBarItem(
        title: Text("首页"),
        icon: Image.asset("assets/images/bottom_tabbar_mainhome_normal22x22.png"),
        activeIcon: Image.asset("assets/images/bottom_tabbar_mainhome_selected22x22.png"),
      ),
      BottomNavigationBarItem(
        title: Text("频道"),
        icon: Image.asset("assets/images/bottom_tabbar_pegasuschannel_normal22x22.png"),
        activeIcon: Image.asset("assets/images/bottom_tabbar_pegasuschannel_selected22x22.png"),
      ),
      BottomNavigationBarItem(
        title: Text("动态"),
        icon: Image.asset("assets/images/bottom_tabbar_followinghome_normal22x22.png"),
        activeIcon: Image.asset("assets/images/bottom_tabbar_followinghome_selected22x22.png"),
      ),
      BottomNavigationBarItem(
        title: Text("会员购"),
        icon: Image.asset("assets/images/bottom_tabbar_mallhome_normal22x22.png"),
        activeIcon: Image.asset("assets/images/bottom_tabbar_mallhome_selected22x22.png"),
      ),
      BottomNavigationBarItem(
        title: Text("我的"),
        icon: Image.asset("assets/images/bottom_tabbar_user_center_normal22x22.png"),
        activeIcon: Image.asset("assets/images/bottom_tabbar_user_center_selected22x22.png"),
      ),
    ];

    views = <Widget>[
      BiliHomeView(),
      Scaffold(),
      Scaffold(),
      Scaffold(),
      Scaffold(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).appBarTheme.color,
          items: tabBarItems,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
