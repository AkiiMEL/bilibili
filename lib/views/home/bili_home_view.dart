import 'package:bilibili/utils/bili_args.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:bilibili/views/home/live/bili_live_list_view.dart';
import 'package:bilibili/views/home/features/bili_features_list_view.dart';
import 'package:bilibili/views/home/popular/bili_popular_list_view.dart';
import 'package:bilibili/views/home/bangumi/bili_bangumi_list_view.dart';

class BiliHomeView extends StatefulWidget {
  @override
  _BiliHomeViewState createState() => _BiliHomeViewState();
}

class _BiliHomeViewState extends State<BiliHomeView>
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
      BiliLiveListView(),
      BiliFeaturesListView(),
      BiliPopularListView(),
      BiliBangumiListView(),
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
                  padding: EdgeInsets.only(
                      left: spacing, bottom: spacing, right: spacing),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ClipOval(
                        child: CachedNetworkImage(
                          // TODO: Repace with actual user avatar url.
                          imageUrl:
                              "http://i1.hdslb.com/bfs/face/27317040707b3034f73402f6b83b6897caffc299.jpg",
                          placeholder: ((context, url) => Image(
                                image: AssetImage(
                                  'assets/images/ad_avator24x24.png',
                                ),
                              )),
                          errorWidget: ((context, url, e) => Image(
                                image: AssetImage(
                                  'assets/images/ad_avator24x24.png',
                                ),
                              )),
                          width: 36.0,
                          height: 36.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: spacing * 2.5,
                      ),
                      Flexible(
                        child: CupertinoTextField(
                          padding: EdgeInsets.symmetric(vertical: spacing / 2),
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
                            padding: EdgeInsets.symmetric(horizontal: spacing),
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
                        width: spacing * 2.5,
                      ),
                      Image.asset(
                            'assets/images/top_btn_game_centerhome_icon22x22.png'),
                      SizedBox(
                        width: spacing * 2.5,
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
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}