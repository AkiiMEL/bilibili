import 'package:bilibili/app/compenents/bb_navigation_view.dart';
import 'package:bilibili/app/utils/bb_app_mgr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluro/fluro.dart';

import 'package:bilibili/app/compenents/bb_network_image.dart';
import 'package:bilibili/app/api/bb_api.dart';
import 'package:bilibili/app/models/bb_tab_models.dart';
import 'package:bilibili/app/routers/bb_route_mgr.dart';

class BBInitialView extends StatefulWidget {
  @override
  _BBInitialViewState createState() => _BBInitialViewState();
}

class _BBInitialViewState extends State<BBInitialView> {
  int _currentIndex;
  Widget _view;
  BBTabBody _tabBody;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _handleError("LOADING...");
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return _view;
  }

  // Load tab configuration from network.
  void _load() async {
    try {
      _tabBody = await BBApi.requestTabConfiguration();
      BBAppMgr.shared.tabLayout = _tabBody;
      List<BBTabBarItem> tabBarItems = _tabBody?.bottom ?? [];
      BBTabBarItem selectedItem =
          tabBarItems.firstWhere((e) => e.selected == 1, orElse: () => null);
      _currentIndex = selectedItem?.pos != null ? selectedItem.pos - 1 : 0;
      _view = _getTabBarView(tabBarItems);
    } catch (e) {
      _handleError(e);
    }

    setState(() {});
  }

  // Handle error when load configuration failed. and
  // set a tip view as root view.
  void _handleError(dynamic e) {
    _view = Scaffold(
      body: Container(
        child: Center(
          child: Text(e?.toString() ?? "No data"),
        ),
      ),
    );
  }

  Widget _getTabBarView(List<BBTabBarItem> tabBarItems) {
    // Default `CupertinoTabScaffold with CupertinoTabBar` requires tab items >= 2,
    // but we request tab by send a http request and maybe response with only one
    // item, so we need a new `BBCupertinoTabScaffold` and `BBCupertinoTabBar`.
    return CupertinoTabScaffold(
      controller: CupertinoTabController(),
      tabBar: CupertinoTabBar(
        items: tabBarItems
            .map((e) => BottomNavigationBarItem(
                  title: e.name != null ? Text(e.name) : SizedBox.shrink(),
                  icon: BBNetworkImage(
                    e.image,
                    size: Size(24.0, 24.0),
                  ),
                  activeIcon: BBNetworkImage(
                    e.selectedImage,
                    size: Size(24.0, 24.0),
                  ),
                ))
            .toList(),
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        // backgroundColor: Theme.of(context).appBarTheme.color,
        activeColor: Theme.of(context).tabBarTheme.labelColor,
        inactiveColor: Theme.of(context).tabBarTheme.unselectedLabelColor,
      ),
      tabBuilder: (BuildContext context, int index) {
        // Home view need more tab info that given by `BBApi.requestTabConfiguration`
        return BBNavigationView(
          rootRouteName: tabBarItems[index].uri,
          onGenerateRoute: Router.appRouter.generator,
        );
      },
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
