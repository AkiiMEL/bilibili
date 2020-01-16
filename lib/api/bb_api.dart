import 'dart:convert' as serializer;
import 'package:bilibili/models/bb_featured_models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:bilibili/models/bb_live_stream_models.dart';

class BBApi {

  static requestAllLive() async {
    return await rootBundle.loadString("assets/files/bb_live_stream_list.json").then((string) => LiveStreamHttpBody.fromJson(serializer.jsonDecode(string)));
  }

  static requestAllFeatured() async {
    return await rootBundle.loadString("assets/files/bb_featured_list.json").then((json) => FeaturedHttpBody.fromJson(serializer.jsonDecode(json)));
  }
}
