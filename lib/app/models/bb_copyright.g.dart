// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_copyright.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Copyright> _$copyrightSerializer = new _$CopyrightSerializer();

class _$CopyrightSerializer implements StructuredSerializer<Copyright> {
  @override
  final Iterable<Type> types = const [Copyright, _$Copyright];
  @override
  final String wireName = 'Copyright';

  @override
  Iterable<Object> serialize(Serializers serializers, Copyright object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.allowBp != null) {
      result
        ..add('allow_bp')
        ..add(serializers.serialize(object.allowBp,
            specifiedType: const FullType(int)));
    }
    if (object.allowBpRank != null) {
      result
        ..add('allow_bp_rank')
        ..add(serializers.serialize(object.allowBpRank,
            specifiedType: const FullType(int)));
    }
    if (object.allowDownload != null) {
      result
        ..add('allow_download')
        ..add(serializers.serialize(object.allowDownload,
            specifiedType: const FullType(int)));
    }
    if (object.allowDm != null) {
      result
        ..add('allow_dm')
        ..add(serializers.serialize(object.allowDm,
            specifiedType: const FullType(int)));
    }
    if (object.allowReview != null) {
      result
        ..add('allow_review')
        ..add(serializers.serialize(object.allowReview,
            specifiedType: const FullType(int)));
    }
    if (object.areaLimit != null) {
      result
        ..add('area_limit')
        ..add(serializers.serialize(object.areaLimit,
            specifiedType: const FullType(int)));
    }
    if (object.banAreaShow != null) {
      result
        ..add('ban_area_show')
        ..add(serializers.serialize(object.banAreaShow,
            specifiedType: const FullType(int)));
    }
    if (object.canWatch != null) {
      result
        ..add('can_watch')
        ..add(serializers.serialize(object.canWatch,
            specifiedType: const FullType(int)));
    }
    if (object.copyright != null) {
      result
        ..add('copyright')
        ..add(serializers.serialize(object.copyright,
            specifiedType: const FullType(String)));
    }
    if (object.copyrightName != null) {
      result
        ..add('copyright_name')
        ..add(serializers.serialize(object.copyrightName,
            specifiedType: const FullType(String)));
    }
    if (object.forbidPre != null) {
      result
        ..add('forbid_pre')
        ..add(serializers.serialize(object.forbidPre,
            specifiedType: const FullType(int)));
    }
    if (object.isCoverShow != null) {
      result
        ..add('is_cover_show')
        ..add(serializers.serialize(object.isCoverShow,
            specifiedType: const FullType(int)));
    }
    if (object.isPreview != null) {
      result
        ..add('is_preview')
        ..add(serializers.serialize(object.isPreview,
            specifiedType: const FullType(int)));
    }
    if (object.resource != null) {
      result
        ..add('resource')
        ..add(serializers.serialize(object.resource,
            specifiedType: const FullType(String)));
    }
    if (object.watchPlatform != null) {
      result
        ..add('watch_platform')
        ..add(serializers.serialize(object.watchPlatform,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Copyright deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CopyrightBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'allow_bp':
          result.allowBp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'allow_bp_rank':
          result.allowBpRank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'allow_download':
          result.allowDownload = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'allow_dm':
          result.allowDm = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'allow_review':
          result.allowReview = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'area_limit':
          result.areaLimit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ban_area_show':
          result.banAreaShow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'can_watch':
          result.canWatch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'copyright':
          result.copyright = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'copyright_name':
          result.copyrightName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'forbid_pre':
          result.forbidPre = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_cover_show':
          result.isCoverShow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_preview':
          result.isPreview = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'resource':
          result.resource = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'watch_platform':
          result.watchPlatform = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Copyright extends Copyright {
  @override
  final int allowBp;
  @override
  final int allowBpRank;
  @override
  final int allowDownload;
  @override
  final int allowDm;
  @override
  final int allowReview;
  @override
  final int areaLimit;
  @override
  final int banAreaShow;
  @override
  final int canWatch;
  @override
  final String copyright;
  @override
  final String copyrightName;
  @override
  final int forbidPre;
  @override
  final int isCoverShow;
  @override
  final int isPreview;
  @override
  final String resource;
  @override
  final int watchPlatform;

  factory _$Copyright([void Function(CopyrightBuilder) updates]) =>
      (new CopyrightBuilder()..update(updates)).build();

  _$Copyright._(
      {this.allowBp,
      this.allowBpRank,
      this.allowDownload,
      this.allowDm,
      this.allowReview,
      this.areaLimit,
      this.banAreaShow,
      this.canWatch,
      this.copyright,
      this.copyrightName,
      this.forbidPre,
      this.isCoverShow,
      this.isPreview,
      this.resource,
      this.watchPlatform})
      : super._();

  @override
  Copyright rebuild(void Function(CopyrightBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyrightBuilder toBuilder() => new CopyrightBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Copyright &&
        allowBp == other.allowBp &&
        allowBpRank == other.allowBpRank &&
        allowDownload == other.allowDownload &&
        allowDm == other.allowDm &&
        allowReview == other.allowReview &&
        areaLimit == other.areaLimit &&
        banAreaShow == other.banAreaShow &&
        canWatch == other.canWatch &&
        copyright == other.copyright &&
        copyrightName == other.copyrightName &&
        forbidPre == other.forbidPre &&
        isCoverShow == other.isCoverShow &&
        isPreview == other.isPreview &&
        resource == other.resource &&
        watchPlatform == other.watchPlatform;
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
                                                                0,
                                                                allowBp
                                                                    .hashCode),
                                                            allowBpRank
                                                                .hashCode),
                                                        allowDownload.hashCode),
                                                    allowDm.hashCode),
                                                allowReview.hashCode),
                                            areaLimit.hashCode),
                                        banAreaShow.hashCode),
                                    canWatch.hashCode),
                                copyright.hashCode),
                            copyrightName.hashCode),
                        forbidPre.hashCode),
                    isCoverShow.hashCode),
                isPreview.hashCode),
            resource.hashCode),
        watchPlatform.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Copyright')
          ..add('allowBp', allowBp)
          ..add('allowBpRank', allowBpRank)
          ..add('allowDownload', allowDownload)
          ..add('allowDm', allowDm)
          ..add('allowReview', allowReview)
          ..add('areaLimit', areaLimit)
          ..add('banAreaShow', banAreaShow)
          ..add('canWatch', canWatch)
          ..add('copyright', copyright)
          ..add('copyrightName', copyrightName)
          ..add('forbidPre', forbidPre)
          ..add('isCoverShow', isCoverShow)
          ..add('isPreview', isPreview)
          ..add('resource', resource)
          ..add('watchPlatform', watchPlatform))
        .toString();
  }
}

class CopyrightBuilder implements Builder<Copyright, CopyrightBuilder> {
  _$Copyright _$v;

  int _allowBp;
  int get allowBp => _$this._allowBp;
  set allowBp(int allowBp) => _$this._allowBp = allowBp;

  int _allowBpRank;
  int get allowBpRank => _$this._allowBpRank;
  set allowBpRank(int allowBpRank) => _$this._allowBpRank = allowBpRank;

  int _allowDownload;
  int get allowDownload => _$this._allowDownload;
  set allowDownload(int allowDownload) => _$this._allowDownload = allowDownload;

  int _allowDm;
  int get allowDm => _$this._allowDm;
  set allowDm(int allowDm) => _$this._allowDm = allowDm;

  int _allowReview;
  int get allowReview => _$this._allowReview;
  set allowReview(int allowReview) => _$this._allowReview = allowReview;

  int _areaLimit;
  int get areaLimit => _$this._areaLimit;
  set areaLimit(int areaLimit) => _$this._areaLimit = areaLimit;

  int _banAreaShow;
  int get banAreaShow => _$this._banAreaShow;
  set banAreaShow(int banAreaShow) => _$this._banAreaShow = banAreaShow;

  int _canWatch;
  int get canWatch => _$this._canWatch;
  set canWatch(int canWatch) => _$this._canWatch = canWatch;

  String _copyright;
  String get copyright => _$this._copyright;
  set copyright(String copyright) => _$this._copyright = copyright;

  String _copyrightName;
  String get copyrightName => _$this._copyrightName;
  set copyrightName(String copyrightName) =>
      _$this._copyrightName = copyrightName;

  int _forbidPre;
  int get forbidPre => _$this._forbidPre;
  set forbidPre(int forbidPre) => _$this._forbidPre = forbidPre;

  int _isCoverShow;
  int get isCoverShow => _$this._isCoverShow;
  set isCoverShow(int isCoverShow) => _$this._isCoverShow = isCoverShow;

  int _isPreview;
  int get isPreview => _$this._isPreview;
  set isPreview(int isPreview) => _$this._isPreview = isPreview;

  String _resource;
  String get resource => _$this._resource;
  set resource(String resource) => _$this._resource = resource;

  int _watchPlatform;
  int get watchPlatform => _$this._watchPlatform;
  set watchPlatform(int watchPlatform) => _$this._watchPlatform = watchPlatform;

  CopyrightBuilder();

  CopyrightBuilder get _$this {
    if (_$v != null) {
      _allowBp = _$v.allowBp;
      _allowBpRank = _$v.allowBpRank;
      _allowDownload = _$v.allowDownload;
      _allowDm = _$v.allowDm;
      _allowReview = _$v.allowReview;
      _areaLimit = _$v.areaLimit;
      _banAreaShow = _$v.banAreaShow;
      _canWatch = _$v.canWatch;
      _copyright = _$v.copyright;
      _copyrightName = _$v.copyrightName;
      _forbidPre = _$v.forbidPre;
      _isCoverShow = _$v.isCoverShow;
      _isPreview = _$v.isPreview;
      _resource = _$v.resource;
      _watchPlatform = _$v.watchPlatform;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Copyright other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Copyright;
  }

  @override
  void update(void Function(CopyrightBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Copyright build() {
    final _$result = _$v ??
        new _$Copyright._(
            allowBp: allowBp,
            allowBpRank: allowBpRank,
            allowDownload: allowDownload,
            allowDm: allowDm,
            allowReview: allowReview,
            areaLimit: areaLimit,
            banAreaShow: banAreaShow,
            canWatch: canWatch,
            copyright: copyright,
            copyrightName: copyrightName,
            forbidPre: forbidPre,
            isCoverShow: isCoverShow,
            isPreview: isPreview,
            resource: resource,
            watchPlatform: watchPlatform);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
