import 'package:bilibili/app/utils/bb_app_mgr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../compenents/bb_network_circle_avatar_image.dart';
import '../models/bb_tab_models.dart';
import '../utils/bb_common.dart';

class BBHomeView extends StatefulWidget {
  @override
  _BBHomeViewState createState() => _BBHomeViewState();
}

class _BBHomeViewState extends State<BBHomeView>
    with SingleTickerProviderStateMixin {
  List<BBTabBarItem> _tabBarItems;
  TabController _tabCtr;

  @override
  void initState() {
    super.initState();

    _tabBarItems =
        BBAppMgr.shared.tabLayout?.tab?.where((e) => e.uri != null)?.toList() ??
            [];

    _tabCtr = TabController(length: _tabBarItems.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabCtr.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).appBarTheme.color,
                  ),
                  padding: defaultMargin.copyWith(top: 0.0, bottom: 0.0),
                  child: _getTopView(),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  tabBar: TabBar(
                    tabs: _tabBarItems.map((e) {
                      return Tab(
                        text:
                            e.ext?.inactiveIcon != null ? null : (e.name ?? ""),
                        icon: e.ext?.inactiveIcon != null
                            ? BBNetworkImage(
                                e.ext.inactiveIcon,
                                size: Size(54, 20),
                              )
                            : null,
                      );
                    }).toList(),
                    isScrollable: true,
                    controller: _tabCtr,
                    labelColor: Theme.of(context).tabBarTheme.labelColor,
                    labelStyle: Theme.of(context).tabBarTheme.labelStyle,
                    unselectedLabelColor:
                        Theme.of(context).tabBarTheme.unselectedLabelColor,
                    unselectedLabelStyle:
                        Theme.of(context).tabBarTheme.unselectedLabelStyle,
                  ),
                ),
                floating: true,
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: _tabBarItems.map((e) {
              Handler handler = Router.appRouter.match(e.uri)?.route?.handler;
              return handler?.handlerFunc(context, null) ?? Container();
            }).toList(),
            controller: _tabCtr,
          ),
        ),
      ),
    );
  }

  Widget _getTopView() {
    List<Widget> children = [
      BBNetworkCircleAvatarImage(
        defaultAvatarURL,
        placeholder: Images.defaultAvatar,
        radius: 18.0,
      ),
      SizedBox(width: defaultMargin.left * 2.5),
      Flexible(
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(vertical: defaultMargin.top / 2),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15.0),
          ),
          placeholder: "机设是男人的浪漫",
          placeholderStyle: TextStyle(
            color: CupertinoColors.placeholderText,
            fontSize: 13.0,
          ),
          prefix: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin.left),
            child: Image(
              image: AssetImage(
                "assets/images/topic_search_ico22x22.png",
              ),
            ),
          ),
          prefixMode: OverlayVisibilityMode.always,
          readOnly: true,
          onTap: () {
            print("search ...............");
          },
        ),
      ),
    ];

    BBAppMgr.shared.tabLayout?.top?.forEach((e) {
      children.add(SizedBox(width: defaultMargin.left * 2.5));
      children.add(BBNetworkImage(
        e.image,
        size: Size(22.0, 22.0),
      ));
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverAppBarDelegate({this.tabBar});

  @override
  double get minExtent => 44.0;

  @override
  double get maxExtent => 44.0;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.color,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerTheme.color,
            width: 0.75,
          ),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: tabBar,
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return tabBar.tabs != oldDelegate.tabBar.tabs;
  }
}
