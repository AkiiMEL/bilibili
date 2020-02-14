import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:bilibili/app/views/bb_not_found.dart';
import 'package:bilibili/app/views/bb_initial_view.dart';
import 'package:bilibili/app/views/bb_bangumi_list_view.dart';
import 'package:bilibili/app/views/bb_featured_list_view.dart';
import 'package:bilibili/app/views/bb_live_stream_list_view.dart';
import 'package:bilibili/app/views/bb_popular_list_view.dart';
import 'package:bilibili/app/views/bb_channel_container_view.dart';
import 'package:bilibili/app/views/bb_home_view.dart';
import 'package:bilibili/app/views/bb_channel_list_view.dart';
import 'package:bilibili/app/views/bb_partation_list_view.dart';
import 'package:bilibili/app/views/bb_mine_view.dart';

Handler notFoundHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        BBNotFoundView());

Handler rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        BBInitialView());

Handler homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        BBHomeView());

Handler liveHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        BBLiveStreamListView());

Handler featuredHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        BBFeaturedListView());

Handler popularHandler = _buildHandler(BBPopularListView());

Handler bangumiHandler = _buildHandler(BBBangumiListView());

Handler channelContainerHandler = _buildHandler(BBChannelContainerView());

Handler partationsHandler = _buildHandler(BBPartationListView());

Handler channelsHandler = _buildHandler(BBChannelListView());

Handler mineHandler = _buildHandler(BBMineView());

Handler _buildHandler(Widget v) {
  return Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) => v);
}