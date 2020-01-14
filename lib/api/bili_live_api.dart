import 'dart:convert' as serializer;
import 'package:bilibili/models/bili_featured_models.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:bilibili/models/bili_live_models.dart';

class BiliApi {
  static requestAllLive() async {
    return await rootBundle.loadString("assets/files/bili_live_list.json").then((string) => LiveStreamBody.fromJson(serializer.jsonDecode(string)));
  }

  static requestAllFeatured() async {
    return await rootBundle.loadString("assets/files/bili_featured_list.json").then((json) => FeaturedBody.fromJson(serializer.jsonDecode(json)));
  }
}
