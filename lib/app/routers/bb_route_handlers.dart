import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../views/bb_media_view.dart';
import '../views/bb_not_found.dart';
import '../views/bb_initial_view.dart';
import '../views/bb_bangumi_home_view.dart';
import '../views/bb_featured_list_view.dart';
import '../views/bb_live_home_view.dart';
import '../views/bb_popular_list_view.dart';
import '../views/bb_channel_container_view.dart';
import '../views/bb_home_view.dart';
import '../views/bb_channel_list_view.dart';
import '../views/bb_partation_list_view.dart';
import '../views/bb_mine_view.dart';

Handler notFoundHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        BBNotFoundView());

Handler rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        BBInitialView());

Handler homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        BBHomeView());

Handler liveHomeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        BBLiveHomeView());

Handler featuredHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        BBFeaturedListView());

Handler popularHandler = _buildHandler(BBPopularListView());

Handler pgcHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        BBBangumiHomeView(
          path: params?.isNotEmpty ?? false ? params["path"].first : null,
        ));

Handler channelContainerHandler = _buildHandler(BBChannelContainerView());

Handler partationsHandler = _buildHandler(BBPartationListView());

Handler channelsHandler = _buildHandler(BBChannelListView());

Handler mineHandler = _buildHandler(BBMineView());

Handler videoHandler = _buildHandler(BBMediaView());

Handler _buildHandler(Widget v) {
  return Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return v;
  });
}
