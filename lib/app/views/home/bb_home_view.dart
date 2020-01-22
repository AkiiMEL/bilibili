import 'package:bilibili/app/compenents/bb_network_avatar_image.dart';
import 'package:bilibili/app/utils/bb_args.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bilibili/app/views/home/live/bb_live_stream_list_view.dart';
import 'package:bilibili/app/views/home/featured/bb_featured_list_view.dart';
import 'package:bilibili/app/views/home/popular/bb_popular_list_view.dart';
import 'package:bilibili/app/views/home/bangumi/bb_bangumi_list_view.dart';

class BBHomeView extends StatefulWidget {
  @override
  _BBHomeViewState createState() => _BBHomeViewState();
}

class _BBHomeViewState extends State<BBHomeView>
    with SingleTickerProviderStateMixin {
  List<Widget> tabBarItems;
  List<Widget> views;
  TabController controller;

  @override
  void initState() {
    super.initState();
    tabBarItems = [
      "直播",
      "推荐",
      "热门",
      "追番",
      "影视",
      "新时代",
    ].map((e) => Text(e)).toList();

    views = [
      BBLiveStreamListView(),
      BBFeaturedListView(),
      BBPopularListView(),
      BBBangumiListView(),
      Scaffold(),
      Scaffold(),
    ];
    controller = TabController(length: tabBarItems.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: defaultMargin.copyWith(top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      BBNetworkAvatarImage(
                        defaultAvatarURL,
                        placeholder: defaultAvatarName,
                        size: Size(36.0, 36.0),
                      ),
                      SizedBox(
                        width: defaultMargin.left * 2.5,
                      ),
                      Flexible(
                        child: CupertinoTextField(
                          padding: EdgeInsets.symmetric(
                              vertical: defaultMargin.top / 2),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultMargin.left),
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
                      SizedBox(
                        width: defaultMargin.left * 2.5,
                      ),
                      Image.asset(
                          'assets/images/top_btn_game_centerhome_icon22x22.png'),
                      SizedBox(
                        width: defaultMargin.left * 2.5,
                      ),
                      Image.asset(
                        "assets/images/top_btn_linkim_home_icon22x22.png",
                      ),
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  tabBar: TabBar(
                    tabs: tabBarItems,
                    isScrollable: true,
                    controller: controller,
                    indicatorColor: Colors.pink,
                    labelColor: Colors.pink,
                    labelStyle: TextStyle(fontSize: 18.0),
                    unselectedLabelColor: Colors.black54,
                    unselectedLabelStyle: TextStyle(fontSize: 18.0),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: 17.0,
                    ),
                  ),
                ),
                floating: true,
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: views,
            controller: controller,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverAppBarDelegate({this.tabBar});

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
