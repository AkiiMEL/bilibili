import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/bb_tab_bar_item.dart';
import '../routers/bb_route_mgr.dart';

class BBChannelContainerView extends StatefulWidget {
  @override
  _BBChannelContainerViewState createState() => _BBChannelContainerViewState();
}

class _BBChannelContainerViewState extends State<BBChannelContainerView>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  List<TabBarItem> _tabBarItems;
  TabController _tabCtr;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _tabBarItems = [
      TabBarItem((b) => b..name = "频道"..uri = BBRouteMgr.channels),
      TabBarItem((b) => b..name = "分区"..uri = BBRouteMgr.partations)
    ];
    _tabCtr = TabController(length: _tabBarItems.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabCtr.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Material(
          child: Column(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  width: 200.0,
                  child: TabBar(
                    tabs: _tabBarItems
                        .map((e) => Tab(
                              text: e.name ?? "",
                            ))
                        .toList(),
                    controller: _tabCtr,
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
      child: SafeArea(
        child: Material(
          child: TabBarView(
            children: _tabBarItems.map((e) {
              Handler handler = FluroRouter.appRouter.match(e.uri)?.route?.handler ??
                  FluroRouter.appRouter.notFoundHandler;
              return handler.handlerFunc(context, null);
            }).toList(),
            controller: _tabCtr,
          ),
        ),
      ),
    );
  }
}
