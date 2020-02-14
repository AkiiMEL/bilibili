import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:bilibili/app/models/bb_http_body.dart';
import 'package:bilibili/app/models/bb_mine.dart';
import 'package:bilibili/app/models/bb_partation.dart';
import 'package:flutter/services.dart';
import 'package:bilibili/app/models/bb_channel_models.dart';
import 'package:bilibili/app/models/bb_featured_models.dart';
import 'package:bilibili/app/models/bb_tab_models.dart';
import 'package:bilibili/app/models/bb_live_stream_models.dart';

export 'package:bilibili/app/models/bb_http_body.dart';
export 'package:bilibili/app/models/bb_mine.dart';
export 'package:bilibili/app/models/bb_partation.dart';
export 'package:flutter/services.dart';
export 'package:bilibili/app/models/bb_channel_models.dart';
export 'package:bilibili/app/models/bb_featured_models.dart';
export 'package:bilibili/app/models/bb_tab_models.dart';
export 'package:bilibili/app/models/bb_live_stream_models.dart';

class BBApi {
  static Future<BBTabBody> requestTabConfiguration() {
    return rootBundle
        .loadString("assets/files/bb_tab_display.json")
        .then((value) => BBTabHttpBody.fromJson(json.decode(value))?.data);
  }

  static Future<LiveStreamHttpBody> requestAllLive() {
    return rootBundle
        .loadString("assets/files/bb_live_stream_list.json")
        .then((value) => LiveStreamHttpBody.fromJson(json.decode(value)));
  }

  static Future<FeaturedHttpBody> requestAllFeatured() {
    return rootBundle
        .loadString("assets/files/bb_featured_list.json")
        .then((value) => FeaturedHttpBody.fromJson(json.decode(value)));
  }

  static Future<ChannelHomeHttpBody> requestChannelHomeData() {
    return rootBundle
        .loadString("assets/files/bb_channel_list.json")
        .then((value) => ChannelHomeHttpBody.fromJson(json.decode(value)));
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
}
