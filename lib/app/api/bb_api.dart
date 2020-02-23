import 'package:flutter/services.dart';
import 'package:dio/dio.dart';

import '../models/bb_http_body.dart';
import '../models/bb_mine.dart';
import '../models/bb_partation.dart';
import '../models/bb_tab_bar_http_body.dart';
import '../models/bb_bangumi_body.dart';
import '../models/bb_featured_body.dart';
import '../models/bb_live_home_body.dart';
import '../models/bb_channel_module.dart';

export '../models/bb_http_body.dart';
export '../models/bb_mine.dart';
export '../models/bb_partation.dart';
export '../models/bb_tab_bar_http_body.dart';
export '../models/bb_bangumi_body.dart';
export '../models/bb_featured_body.dart';
export '../models/bb_live_home_body.dart';
export '../models/bb_channel_module.dart';

class BBApi {
  static Future<TabBarHttpBody> requestTabConfig() {
    return rootBundle
        .loadString("assets/files/bb_tab_display.json")
        .then((value) => TabBarHttpBody.fromJson(value));
  }

  static Future<HttpBody<LiveHomeBody>> requestAllLive() {
    return rootBundle
        .loadString("assets/files/bb_live_stream_list.json")
        .then((value) => HttpBody.fromJson(value));
  }

  static Future<HttpBody<FeaturedBody>> requestAllFeatured() {
    return rootBundle
        .loadString("assets/files/bb_featured_list.json")
        .then((value) => HttpBody.fromJson(value));
  }

  static Future<HttpListBody<ChannelModule>> requestChannelHomeData() {
    return rootBundle
        .loadString("assets/files/bb_channel_list.json")
        .then((value) => HttpListBody.fromJson(value));
  }

  static Future<HttpListBody<Partation>> requestAllPartion() {
    return rootBundle
        .loadString("assets/files/bb_partation_list.json")
        .then((value) => HttpListBody.fromJson(value));
  }

  static Future<HttpBody<Mine>> requestMine() {
    return rootBundle
        .loadString("assets/files/bb_mine.json")
        .then((value) => HttpBody.fromJson(value));
  }

  static Future<HttpBody<BangumiBody>> requestAllBangumi() {
    return rootBundle
        .loadString("assets/files/bb_bangumi_list.json")
        .then((value) => HttpBody.fromJson(value));
  }
}
