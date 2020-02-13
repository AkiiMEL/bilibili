import 'dart:convert' as serializer;
import 'package:bilibili/app/models/bb_http_body.dart';
import 'package:bilibili/app/models/bb_partation.dart';
import 'package:flutter/services.dart';
import 'package:bilibili/app/models/bb_channel_models.dart';
import 'package:bilibili/app/models/bb_featured_models.dart';
import 'package:bilibili/app/models/bb_tab_models.dart';
import 'package:dio/dio.dart';
import 'package:bilibili/app/models/bb_live_stream_models.dart';

export 'package:bilibili/app/models/bb_http_body.dart';
export 'package:bilibili/app/models/bb_partation.dart';

class BBApi {
  static Future<BBTabBody> requestTabConfiguration() {
    return rootBundle
    .loadString("assets/files/bb_tab_display.json")
    .then((string) => BBTabHttpBody.fromJson(serializer.jsonDecode(string))?.data);
  }

  static Future<LiveStreamHttpBody> requestAllLive() {
    return rootBundle
    .loadString("assets/files/bb_live_stream_list.json")
    .then((string) => LiveStreamHttpBody.fromJson(serializer.jsonDecode(string)));
  }

  static Future<FeaturedHttpBody> requestAllFeatured() {
    return rootBundle
        .loadString("assets/files/bb_featured_list.json")
        .then((json) => FeaturedHttpBody.fromJson(serializer.jsonDecode(json)));
  }

  static Future<ChannelHomeHttpBody> requestChannelHomeData() {
    return rootBundle
    .loadString("assets/files/bb_channel_list.json")
    .then((json) => ChannelHomeHttpBody.fromJson(serializer.jsonDecode(json)));
  }

  static Future<HttpListBody<Partation>> requestAllPartion() {
    return rootBundle
    .loadString("assets/files/bb_partation_list.json")
    .then((json) => HttpListBody.fromJson<Partation>(json));
  }
}
