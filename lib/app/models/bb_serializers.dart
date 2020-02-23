library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'bb_ad_tag_style.dart';
import 'bb_advertisement.dart';
import 'bb_advertisement_creative_content.dart';
import 'bb_argument.dart';
import 'bb_attr.dart';
import 'bb_badge.dart';
import 'bb_bangumi_body.dart';
import 'bb_bangumi_body_popular.dart';
import 'bb_bangumi_follow.dart';
import 'bb_bangumi_list_item.dart';
import 'bb_bangumi_stat.dart';
import 'bb_bangumi_status.dart';
import 'bb_button_description.dart';
import 'bb_card.dart';
import 'bb_channel.dart';
import 'bb_channel_group.dart';
import 'bb_channel_module.dart';
import 'bb_config.dart';
import 'bb_cover.dart';
import 'bb_episode.dart';
import 'bb_extra.dart';
import 'bb_featured_body.dart';
import 'bb_feedback_panel.dart';
import 'bb_feedback_panel_detail.dart';
import 'bb_http_body.dart';
import 'bb_live_home_body.dart';
import 'bb_media.dart';
import 'bb_module.dart';
import 'bb_module_follow.dart';
import 'bb_new_ep.dart';
import 'bb_partation.dart';
import 'bb_mine.dart';
import 'bb_classified_services.dart';
import 'bb_pendent.dart';
import 'bb_official_verify.dart';
import 'bb_reason.dart';
import 'bb_region.dart';
import 'bb_report.dart';
import 'bb_secondary_panel.dart';
import 'bb_service.dart';
import 'bb_share_info.dart';
import 'bb_source_content.dart';
import 'bb_tab_bar_http_body.dart';
import 'bb_tab_bar_item.dart';
import 'bb_three_point.dart';
import 'bb_vip.dart';
import 'bb_watch_progress.dart';
import 'bb_whitelist.dart';
import 'bb_text_attributes.dart';

part 'bb_serializers.g.dart';

@SerializersFor([
  AdTagStyle,
  Advertisement,
  AdvertisementCreativeContent,
  Argument,
  Attr,
  Badge,
  BangumiBody,
  BangumiBodyPopular,
  BangumiFollow,
  BangumiListItem,
  BangumiStat,
  BangumiStatus,
  ButtonDescription,
  Card,
  Channel,
  ChannelModule,
  ChannelGroup,
  ClassifiedServices,
  Config,
  Cover,
  Episode,
  Extra,
  FeaturedBody,
  FeedbackPanel,
  FeedbackPanelDetail,
  HttpBody,
  HttpListBody,
  LiveExtra,
  LiveGroup,
  LiveHomeActivity,
  LiveHomeAd,
  LiveHomeBody,
  LiveModule,
  LivePendent,
  LiveTag,
  Media,
  Mine,
  Module,
  ModuleFollow,
  NewEp,
  OfficialVerify,
  Partation,
  Pendant,
  QualityDescription,
  Reason,
  Region,
  Report,
  Room,
  SecondaryPanel,
  Service,
  ShareInfo,
  SourceContent,
  TabBarConfig,
  TabBarDisplay,
  TabBarHttpBody,
  TabBarItem,
  TextAttributes,
  ThreePoint,
  ThreePointV2,
  Vip,
  VipLabel,
  WatchProgress,
  Whitelist,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        FullType(HttpListBody, [FullType(Partation)]),
        () => HttpListBodyBuilder<Partation>(),
      )
      ..addBuilderFactory(
        FullType(HttpListBody, [FullType(ChannelModule)]),
        () => HttpListBodyBuilder<ChannelModule>(),
      )
      ..addBuilderFactory(
        FullType(HttpBody, [FullType(Mine)]),
        () => HttpBodyBuilder<Mine>(),
      )
      ..addBuilderFactory(
        FullType(HttpBody, [FullType(BangumiBody)]),
        () => HttpBodyBuilder<BangumiBody>(),
      )
      ..addBuilderFactory(
        FullType(HttpBody, [FullType(FeaturedBody)]),
        () => HttpBodyBuilder<FeaturedBody>(),
      )
      ..addBuilderFactory(
        FullType(HttpBody, [FullType(LiveHomeBody)]),
        () => HttpBodyBuilder<LiveHomeBody>(),
      )
      ..addBuilderFactory(
        FullType(LiveGroup, [FullType(Room)]),
        () => LiveGroupBuilder<Room>(),
      )
      ..addBuilderFactory(
        FullType(LiveGroup, [FullType(LiveTag)]),
        () => LiveGroupBuilder<LiveTag>(),
      )
      ..addBuilderFactory(
        FullType(LiveGroup, [FullType(LiveHomeAd)]),
        () => LiveGroupBuilder<LiveHomeAd>(),
      )
      ..addBuilderFactory(
        FullType(LiveGroup, [FullType(LiveHomeActivity)]),
        () => LiveGroupBuilder<LiveHomeActivity>(),
      )
      ..addBuilderFactory(
        FullType(BuiltList, [FullType(LiveGroup)]),
        () => ListBuilder<LiveGroup>(),
      )
      ..addBuilderFactory(
        FullType(BuiltList, [FullType(Room)]),
        () => ListBuilder<Room>(),
      )
      ..addBuilderFactory(
        FullType(BuiltList, [FullType(LiveTag)]),
        () => ListBuilder<LiveTag>(),
      )
      ..addBuilderFactory(
        FullType(BuiltList, [FullType(LiveHomeAd)]),
        () => ListBuilder<LiveHomeAd>(),
      )
      ..addBuilderFactory(
        FullType(BuiltList, [FullType(LiveHomeActivity)]),
        () => ListBuilder<LiveHomeActivity>(),
      )
      ..addBuilderFactory(
        FullType(BuiltList, [FullType(ChannelModule)]),
        () => ListBuilder<ChannelModule>(),
      )
      ..addBuilderFactory(
        FullType(BuiltList, [FullType(Partation)]),
        () => ListBuilder<Partation>(),
      )
      ..addPlugin(StandardJsonPlugin()))
    .build();
