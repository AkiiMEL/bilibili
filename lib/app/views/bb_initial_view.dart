import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluro/fluro.dart';

import '../compenents/bb_ui.dart';
import '../api/bb_api.dart';
import '../routers/bb_route_mgr.dart';
import '../models/bb_tab_bar_http_body.dart';
import '../utils/bb_app_mgr.dart';

class BBInitialView extends StatefulWidget {
  @override
  _BBInitialViewState createState() => _BBInitialViewState();
}

class _BBInitialViewState extends State<BBInitialView> {
  Widget _view;

  @override
  void initState() {
    super.initState();
    _view = Scaffold(body: BBLoadingView());
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return _view;
  }

  // Load tab configuration from network.
  void _load() async {
    try {
      TabBarHttpBody body = await BBApi.requestTabConfig();
      BBAppMgr.shared.tabLayout = body?.data;
      List<TabBarItem> tabBarItems = body?.data?.bottom?.toList() ?? [];
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

  Widget _getTabBarView(List<TabBarItem> tabBarItems) {
    // Default `CupertinoTabScaffold with CupertinoTabBar` requires tab items >= 2,
    // but we request tab by send a http request and maybe response with only one
    // item, so we need a new `BBCupertinoTabScaffold` and `BBCupertinoTabBar`.
    int initialIndex = tabBarItems.firstWhere((e) => e.selected == 1, orElse: () => null)?.pos ?? 1;
    initialIndex = initialIndex < 1 ? 1 : initialIndex;
    return CupertinoTabScaffold(
      controller: CupertinoTabController(initialIndex: initialIndex - 1),
      tabBar: CupertinoTabBar(
        items: tabBarItems
            .map((e) => BottomNavigationBarItem(
                  label: e.name != null ? e.name : "",
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
        // backgroundColor: Theme.of(context).appBarTheme.color,
        activeColor: Theme.of(context).tabBarTheme.labelColor,
        inactiveColor: Theme.of(context).tabBarTheme.unselectedLabelColor,
      ),
      tabBuilder: (BuildContext context, int index) {
        AppRouteMatch match = FluroRouter.appRouter.match(tabBarItems[index].uri);
        Handler handler =
            match?.route?.handler ?? FluroRouter.appRouter.notFoundHandler;
        return handler.handlerFunc(context, match?.parameters);
      },
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
