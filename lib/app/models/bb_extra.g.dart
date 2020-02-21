// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_extra.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Extra> _$extraSerializer = new _$ExtraSerializer();

class _$ExtraSerializer implements StructuredSerializer<Extra> {
  @override
  final Iterable<Type> types = const [Extra, _$Extra];
  @override
  final String wireName = 'Extra';

  @override
  Iterable<Object> serialize(Serializers serializers, Extra object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.salesType != null) {
      result
        ..add('sales_type')
        ..add(serializers.serialize(object.salesType,
            specifiedType: const FullType(int)));
    }
    if (object.shareInfo != null) {
      result
        ..add('share_info')
        ..add(serializers.serialize(object.shareInfo,
            specifiedType: const FullType(ShareInfo)));
    }
    if (object.useAdWebV2 != null) {
      result
        ..add('use_ad_web_v2')
        ..add(serializers.serialize(object.useAdWebV2,
            specifiedType: const FullType(bool)));
    }
    if (object.showUrls != null) {
      result
        ..add('show_urls')
        ..add(serializers.serialize(object.showUrls,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.clickUrls != null) {
      result
        ..add('click_urls')
        ..add(serializers.serialize(object.clickUrls,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.upzoneEntranceReportId != null) {
      result
        ..add('upzone_entrance_report_id')
        ..add(serializers.serialize(object.upzoneEntranceReportId,
            specifiedType: const FullType(int)));
    }
    if (object.specialIndustry != null) {
      result
        ..add('special_industry')
        ..add(serializers.serialize(object.specialIndustry,
            specifiedType: const FullType(bool)));
    }
    if (object.appstorePriority != null) {
      result
        ..add('appstore_priority')
        ..add(serializers.serialize(object.appstorePriority,
            specifiedType: const FullType(int)));
    }
    if (object.upzoneEntranceType != null) {
      result
        ..add('upzone_entrance_type')
        ..add(serializers.serialize(object.upzoneEntranceType,
            specifiedType: const FullType(int)));
    }
    if (object.reportTime != null) {
      result
        ..add('report_time')
        ..add(serializers.serialize(object.reportTime,
            specifiedType: const FullType(int)));
    }
    if (object.preloadLandingpage != null) {
      result
        ..add('preload_landingpage')
        ..add(serializers.serialize(object.preloadLandingpage,
            specifiedType: const FullType(int)));
    }
    if (object.openWhitelist != null) {
      result
        ..add('open_white_list')
        ..add(serializers.serialize(object.openWhitelist,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.specialIndustryTips != null) {
      result
        ..add('special_industry_tips')
        ..add(serializers.serialize(object.specialIndustryTips,
            specifiedType: const FullType(String)));
    }
    if (object.downloadWhitelist != null) {
      result
        ..add('download_whitelist')
        ..add(serializers.serialize(object.downloadWhitelist,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Whitelist)])));
    }
    if (object.enableShare != null) {
      result
        ..add('enable_share')
        ..add(serializers.serialize(object.enableShare,
            specifiedType: const FullType(bool)));
    }
    if (object.card != null) {
      result
        ..add('card')
        ..add(serializers.serialize(object.card,
            specifiedType: const FullType(Card)));
    }
    return result;
  }

  @override
  Extra deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExtraBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sales_type':
          result.salesType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'share_info':
          result.shareInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShareInfo)) as ShareInfo);
          break;
        case 'use_ad_web_v2':
          result.useAdWebV2 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'show_urls':
          result.showUrls.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'click_urls':
          result.clickUrls.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'upzone_entrance_report_id':
          result.upzoneEntranceReportId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'special_industry':
          result.specialIndustry = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'appstore_priority':
          result.appstorePriority = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'upzone_entrance_type':
          result.upzoneEntranceType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'report_time':
          result.reportTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'preload_landingpage':
          result.preloadLandingpage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'open_white_list':
          result.openWhitelist = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'special_industry_tips':
          result.specialIndustryTips = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'download_whitelist':
          result.downloadWhitelist.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Whitelist)]))
              as BuiltList<Object>);
          break;
        case 'enable_share':
          result.enableShare = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'card':
          result.card.replace(serializers.deserialize(value,
              specifiedType: const FullType(Card)) as Card);
          break;
      }
    }

    return result.build();
  }
}

class _$Extra extends Extra {
  @override
  final int salesType;
  @override
  final ShareInfo shareInfo;
  @override
  final bool useAdWebV2;
  @override
  final BuiltList<String> showUrls;
  @override
  final BuiltList<String> clickUrls;
  @override
  final int upzoneEntranceReportId;
  @override
  final bool specialIndustry;
  @override
  final int appstorePriority;
  @override
  final int upzoneEntranceType;
  @override
  final int reportTime;
  @override
  final int preloadLandingpage;
  @override
  final BuiltList openWhitelist;
  @override
  final String specialIndustryTips;
  @override
  final BuiltList<Whitelist> downloadWhitelist;
  @override
  final bool enableShare;
  @override
  final Card card;

  factory _$Extra([void Function(ExtraBuilder) updates]) =>
      (new ExtraBuilder()..update(updates)).build();

  _$Extra._(
      {this.salesType,
      this.shareInfo,
      this.useAdWebV2,
      this.showUrls,
      this.clickUrls,
      this.upzoneEntranceReportId,
      this.specialIndustry,
      this.appstorePriority,
      this.upzoneEntranceType,
      this.reportTime,
      this.preloadLandingpage,
      this.openWhitelist,
      this.specialIndustryTips,
      this.downloadWhitelist,
      this.enableShare,
      this.card})
      : super._();

  @override
  Extra rebuild(void Function(ExtraBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtraBuilder toBuilder() => new ExtraBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Extra &&
        salesType == other.salesType &&
        shareInfo == other.shareInfo &&
        useAdWebV2 == other.useAdWebV2 &&
        showUrls == other.showUrls &&
        clickUrls == other.clickUrls &&
        upzoneEntranceReportId == other.upzoneEntranceReportId &&
        specialIndustry == other.specialIndustry &&
        appstorePriority == other.appstorePriority &&
        upzoneEntranceType == other.upzoneEntranceType &&
        reportTime == other.reportTime &&
        preloadLandingpage == other.preloadLandingpage &&
        openWhitelist == other.openWhitelist &&
        specialIndustryTips == other.specialIndustryTips &&
        downloadWhitelist == other.downloadWhitelist &&
        enableShare == other.enableShare &&
        card == other.card;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    salesType
                                                                        .hashCode),
                                                                shareInfo
                                                                    .hashCode),
                                                            useAdWebV2
                                                                .hashCode),
                                                        showUrls.hashCode),
                                                    clickUrls.hashCode),
                                                upzoneEntranceReportId
                                                    .hashCode),
                                            specialIndustry.hashCode),
                                        appstorePriority.hashCode),
                                    upzoneEntranceType.hashCode),
                                reportTime.hashCode),
                            preloadLandingpage.hashCode),
                        openWhitelist.hashCode),
                    specialIndustryTips.hashCode),
                downloadWhitelist.hashCode),
            enableShare.hashCode),
        card.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Extra')
          ..add('salesType', salesType)
          ..add('shareInfo', shareInfo)
          ..add('useAdWebV2', useAdWebV2)
          ..add('showUrls', showUrls)
          ..add('clickUrls', clickUrls)
          ..add('upzoneEntranceReportId', upzoneEntranceReportId)
          ..add('specialIndustry', specialIndustry)
          ..add('appstorePriority', appstorePriority)
          ..add('upzoneEntranceType', upzoneEntranceType)
          ..add('reportTime', reportTime)
          ..add('preloadLandingpage', preloadLandingpage)
          ..add('openWhitelist', openWhitelist)
          ..add('specialIndustryTips', specialIndustryTips)
          ..add('downloadWhitelist', downloadWhitelist)
          ..add('enableShare', enableShare)
          ..add('card', card))
        .toString();
  }
}

class ExtraBuilder implements Builder<Extra, ExtraBuilder> {
  _$Extra _$v;

  int _salesType;
  int get salesType => _$this._salesType;
  set salesType(int salesType) => _$this._salesType = salesType;

  ShareInfoBuilder _shareInfo;
  ShareInfoBuilder get shareInfo =>
      _$this._shareInfo ??= new ShareInfoBuilder();
  set shareInfo(ShareInfoBuilder shareInfo) => _$this._shareInfo = shareInfo;

  bool _useAdWebV2;
  bool get useAdWebV2 => _$this._useAdWebV2;
  set useAdWebV2(bool useAdWebV2) => _$this._useAdWebV2 = useAdWebV2;

  ListBuilder<String> _showUrls;
  ListBuilder<String> get showUrls =>
      _$this._showUrls ??= new ListBuilder<String>();
  set showUrls(ListBuilder<String> showUrls) => _$this._showUrls = showUrls;

  ListBuilder<String> _clickUrls;
  ListBuilder<String> get clickUrls =>
      _$this._clickUrls ??= new ListBuilder<String>();
  set clickUrls(ListBuilder<String> clickUrls) => _$this._clickUrls = clickUrls;

  int _upzoneEntranceReportId;
  int get upzoneEntranceReportId => _$this._upzoneEntranceReportId;
  set upzoneEntranceReportId(int upzoneEntranceReportId) =>
      _$this._upzoneEntranceReportId = upzoneEntranceReportId;

  bool _specialIndustry;
  bool get specialIndustry => _$this._specialIndustry;
  set specialIndustry(bool specialIndustry) =>
      _$this._specialIndustry = specialIndustry;

  int _appstorePriority;
  int get appstorePriority => _$this._appstorePriority;
  set appstorePriority(int appstorePriority) =>
      _$this._appstorePriority = appstorePriority;

  int _upzoneEntranceType;
  int get upzoneEntranceType => _$this._upzoneEntranceType;
  set upzoneEntranceType(int upzoneEntranceType) =>
      _$this._upzoneEntranceType = upzoneEntranceType;

  int _reportTime;
  int get reportTime => _$this._reportTime;
  set reportTime(int reportTime) => _$this._reportTime = reportTime;

  int _preloadLandingpage;
  int get preloadLandingpage => _$this._preloadLandingpage;
  set preloadLandingpage(int preloadLandingpage) =>
      _$this._preloadLandingpage = preloadLandingpage;

  BuiltList _openWhitelist;
  BuiltList get openWhitelist => _$this._openWhitelist;
  set openWhitelist(BuiltList openWhitelist) =>
      _$this._openWhitelist = openWhitelist;

  String _specialIndustryTips;
  String get specialIndustryTips => _$this._specialIndustryTips;
  set specialIndustryTips(String specialIndustryTips) =>
      _$this._specialIndustryTips = specialIndustryTips;

  ListBuilder<Whitelist> _downloadWhitelist;
  ListBuilder<Whitelist> get downloadWhitelist =>
      _$this._downloadWhitelist ??= new ListBuilder<Whitelist>();
  set downloadWhitelist(ListBuilder<Whitelist> downloadWhitelist) =>
      _$this._downloadWhitelist = downloadWhitelist;

  bool _enableShare;
  bool get enableShare => _$this._enableShare;
  set enableShare(bool enableShare) => _$this._enableShare = enableShare;

  CardBuilder _card;
  CardBuilder get card => _$this._card ??= new CardBuilder();
  set card(CardBuilder card) => _$this._card = card;

  ExtraBuilder();

  ExtraBuilder get _$this {
    if (_$v != null) {
      _salesType = _$v.salesType;
      _shareInfo = _$v.shareInfo?.toBuilder();
      _useAdWebV2 = _$v.useAdWebV2;
      _showUrls = _$v.showUrls?.toBuilder();
      _clickUrls = _$v.clickUrls?.toBuilder();
      _upzoneEntranceReportId = _$v.upzoneEntranceReportId;
      _specialIndustry = _$v.specialIndustry;
      _appstorePriority = _$v.appstorePriority;
      _upzoneEntranceType = _$v.upzoneEntranceType;
      _reportTime = _$v.reportTime;
      _preloadLandingpage = _$v.preloadLandingpage;
      _openWhitelist = _$v.openWhitelist;
      _specialIndustryTips = _$v.specialIndustryTips;
      _downloadWhitelist = _$v.downloadWhitelist?.toBuilder();
      _enableShare = _$v.enableShare;
      _card = _$v.card?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Extra other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Extra;
  }

  @override
  void update(void Function(ExtraBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Extra build() {
    _$Extra _$result;
    try {
      _$result = _$v ??
          new _$Extra._(
              salesType: salesType,
              shareInfo: _shareInfo?.build(),
              useAdWebV2: useAdWebV2,
              showUrls: _showUrls?.build(),
              clickUrls: _clickUrls?.build(),
              upzoneEntranceReportId: upzoneEntranceReportId,
              specialIndustry: specialIndustry,
              appstorePriority: appstorePriority,
              upzoneEntranceType: upzoneEntranceType,
              reportTime: reportTime,
              preloadLandingpage: preloadLandingpage,
              openWhitelist: openWhitelist,
              specialIndustryTips: specialIndustryTips,
              downloadWhitelist: _downloadWhitelist?.build(),
              enableShare: enableShare,
              card: _card?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'shareInfo';
        _shareInfo?.build();

        _$failedField = 'showUrls';
        _showUrls?.build();
        _$failedField = 'clickUrls';
        _clickUrls?.build();

        _$failedField = 'downloadWhitelist';
        _downloadWhitelist?.build();

        _$failedField = 'card';
        _card?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Extra', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
