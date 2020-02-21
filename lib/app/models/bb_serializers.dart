library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'bb_ad_tag_style.dart';
import 'bb_advertisement.dart';
import 'bb_advertisement_creative_content.dart';
import 'bb_attr.dart';
import 'bb_bangumi_body.dart';
import 'bb_bangumi_body_popular.dart';
import 'bb_bangumi_follow.dart';
import 'bb_bangumi_list_item.dart';
import 'bb_bangumi_report.dart';
import 'bb_bangumi_stat.dart';
import 'bb_bangumi_status.dart';
import 'bb_button_description.dart';
import 'bb_card.dart';
import 'bb_cover.dart';
import 'bb_episode.dart';
import 'bb_extra.dart';
import 'bb_feedback_panel.dart';
import 'bb_feedback_panel_detail.dart';
import 'bb_http_body.dart';
import 'bb_module.dart';
import 'bb_module_follow.dart';
import 'bb_new_ep.dart';
import 'bb_partation.dart';
import 'bb_mine.dart';
import 'bb_classified_services.dart';
import 'bb_pendent.dart';
import 'bb_official_verify.dart';
import 'bb_region.dart';
import 'bb_secondary_panel.dart';
import 'bb_service.dart';
import 'bb_share_info.dart';
import 'bb_source_content.dart';
import 'bb_vip.dart';
import 'bb_watch_progress.dart';
import 'bb_whitelist.dart';

part 'bb_serializers.g.dart';

@SerializersFor([
  HttpBody,
  HttpListBody,
  Partation,
  Mine,
  OfficialVerify,
  Pendant,
  ClassifiedServices,
  Service,
  BangumiBody,
  BangumiBodyPopular,
  Module,
  Region,
  Advertisement,
  AdvertisementCreativeContent,
  AdTagStyle,
  Attr,
  BangumiFollow,
  BangumiListItem,
  BangumiStat,
  BangumiStatus,
  ButtonDescription,
  Card,
  Cover,
  Episode,
  Extra,
  FeedbackPanel,
  FeedbackPanelDetail,
  ModuleFollow,
  NewEp,
  Report,
  SecondaryPanel,
  ShareInfo,
  SourceContent,
  WatchProgress,
  Whitelist,
])

final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(FullType(HttpListBody, [FullType(Partation)]),
          () => HttpListBodyBuilder<Partation>())
      ..addBuilderFactory(
          FullType(HttpBody, [FullType(Mine)]), () => HttpBodyBuilder<Mine>())
      ..addBuilderFactory(FullType(HttpBody, [FullType(BangumiBody)]),
          () => HttpBodyBuilder<BangumiBody>())
      ..addBuilderFactory(FullType(BuiltList, [FullType(Partation)]),
          () => ListBuilder<Partation>())
      ..addPlugin(StandardJsonPlugin()))
    .build();
