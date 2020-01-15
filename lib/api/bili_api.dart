import 'dart:convert' as serializer;
import 'package:bilibili/models/bili_featured_models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:bilibili/models/bili_live_stream_models.dart';

class BiliApi {
  static requestAllLive() async {
    return await rootBundle.loadString("assets/files/bili_live_stream_list.json").then((string) => LiveStreamHttpBody.fromJson(serializer.jsonDecode(string)));
  }

  static requestAllFeatured() async {
    return await rootBundle.loadString("assets/files/bili_featured_list.json").then((json) => FeaturedHttpBody.fromJson(serializer.jsonDecode(json)));
  }
}
