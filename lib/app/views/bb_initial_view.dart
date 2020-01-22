import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluro/fluro.dart';

import 'package:bilibili/app/compenents/bb_cupertino_tab_scaffold.dart';
import 'package:bilibili/app/compenents/bb_network_image.dart';
import 'package:bilibili/app/api/bb_api.dart';
import 'package:bilibili/app/models/bb_tab_models.dart';

class BBInitialView extends StatefulWidget {
  @override
  _BBInitialViewState createState() => _BBInitialViewState();
}

class _BBInitialViewState extends State<BBInitialView> {
  int _currentIndex;
  Widget _view;

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
      BBTabBody body = await BBApi.requestTabConfiguration();
      List<BBTabBarItem> tabBarItems = body?.bottom ?? [];
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
    return BBCupertinoTabScaffold(
      controller: BBCupertinoTabController(),
      tabBar: BBCupertinoTabBar(
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
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          onGenerateRoute: (RouteSettings settings) {
            RouteSettings routeSettings = settings;
            // Replace root route settings with matched route settings.
            if (settings.name == "/") {
              routeSettings = settings.copyWith(name: tabBarItems[index].uri);
            }
            return Router.appRouter.generator(routeSettings);
          },
        );
      },
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
