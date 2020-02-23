// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_live_home_activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LiveHomeActivity> _$liveHomeActivitySerializer =
    new _$LiveHomeActivitySerializer();

class _$LiveHomeActivitySerializer
    implements StructuredSerializer<LiveHomeActivity> {
  @override
  final Iterable<Type> types = const [LiveHomeActivity, _$LiveHomeActivity];
  @override
  final String wireName = 'LiveHomeActivity';

  @override
  Iterable<Object> serialize(Serializers serializers, LiveHomeActivity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.aid != null) {
      result
        ..add('aid')
        ..add(serializers.serialize(object.aid,
            specifiedType: const FullType(int)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.logoUrl != null) {
      result
        ..add('logo_url')
        ..add(serializers.serialize(object.logoUrl,
            specifiedType: const FullType(String)));
    }
    if (object.startAt != null) {
      result
        ..add('start_at')
        ..add(serializers.serialize(object.startAt,
            specifiedType: const FullType(int)));
    }
    if (object.endAt != null) {
      result
        ..add('end_at')
        ..add(serializers.serialize(object.endAt,
            specifiedType: const FullType(int)));
    }
    if (object.timeText != null) {
      result
        ..add('time_text')
        ..add(serializers.serialize(object.timeText,
            specifiedType: const FullType(String)));
    }
    if (object.buttonUrl != null) {
      result
        ..add('button_url')
        ..add(serializers.serialize(object.buttonUrl,
            specifiedType: const FullType(String)));
    }
    if (object.buttonText != null) {
      result
        ..add('button_text')
        ..add(serializers.serialize(object.buttonText,
            specifiedType: const FullType(String)));
    }
    if (object.activityUrl != null) {
      result
        ..add('activity_url')
        ..add(serializers.serialize(object.activityUrl,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.onLive != null) {
      result
        ..add('on_live')
        ..add(serializers.serialize(object.onLive,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  LiveHomeActivity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LiveHomeActivityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'aid':
          result.aid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'logo_url':
          result.logoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start_at':
          result.startAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'end_at':
          result.endAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time_text':
          result.timeText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'button_url':
          result.buttonUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'button_text':
          result.buttonText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'activity_url':
          result.activityUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'on_live':
          result.onLive = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$LiveHomeActivity extends LiveHomeActivity {
  @override
  final int aid;
  @override
  final int type;
  @override
  final String title;
  @override
  final String logoUrl;
  @override
  final int startAt;
  @override
  final int endAt;
  @override
  final String timeText;
  @override
  final String buttonUrl;
  @override
  final String buttonText;
  @override
  final String activityUrl;
  @override
  final int status;
  @override
  final int onLive;

  factory _$LiveHomeActivity(
          [void Function(LiveHomeActivityBuilder) updates]) =>
      (new LiveHomeActivityBuilder()..update(updates)).build();

  _$LiveHomeActivity._(
      {this.aid,
      this.type,
      this.title,
      this.logoUrl,
      this.startAt,
      this.endAt,
      this.timeText,
      this.buttonUrl,
      this.buttonText,
      this.activityUrl,
      this.status,
      this.onLive})
      : super._();

  @override
  LiveHomeActivity rebuild(void Function(LiveHomeActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveHomeActivityBuilder toBuilder() =>
      new LiveHomeActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveHomeActivity &&
        aid == other.aid &&
        type == other.type &&
        title == other.title &&
        logoUrl == other.logoUrl &&
        startAt == other.startAt &&
        endAt == other.endAt &&
        timeText == other.timeText &&
        buttonUrl == other.buttonUrl &&
        buttonText == other.buttonText &&
        activityUrl == other.activityUrl &&
        status == other.status &&
        onLive == other.onLive;
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
                                            $jc($jc(0, aid.hashCode),
                                                type.hashCode),
                                            title.hashCode),
                                        logoUrl.hashCode),
                                    startAt.hashCode),
                                endAt.hashCode),
                            timeText.hashCode),
                        buttonUrl.hashCode),
                    buttonText.hashCode),
                activityUrl.hashCode),
            status.hashCode),
        onLive.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LiveHomeActivity')
          ..add('aid', aid)
          ..add('type', type)
          ..add('title', title)
          ..add('logoUrl', logoUrl)
          ..add('startAt', startAt)
          ..add('endAt', endAt)
          ..add('timeText', timeText)
          ..add('buttonUrl', buttonUrl)
          ..add('buttonText', buttonText)
          ..add('activityUrl', activityUrl)
          ..add('status', status)
          ..add('onLive', onLive))
        .toString();
  }
}

class LiveHomeActivityBuilder
    implements Builder<LiveHomeActivity, LiveHomeActivityBuilder> {
  _$LiveHomeActivity _$v;

  int _aid;
  int get aid => _$this._aid;
  set aid(int aid) => _$this._aid = aid;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _logoUrl;
  String get logoUrl => _$this._logoUrl;
  set logoUrl(String logoUrl) => _$this._logoUrl = logoUrl;

  int _startAt;
  int get startAt => _$this._startAt;
  set startAt(int startAt) => _$this._startAt = startAt;

  int _endAt;
  int get endAt => _$this._endAt;
  set endAt(int endAt) => _$this._endAt = endAt;

  String _timeText;
  String get timeText => _$this._timeText;
  set timeText(String timeText) => _$this._timeText = timeText;

  String _buttonUrl;
  String get buttonUrl => _$this._buttonUrl;
  set buttonUrl(String buttonUrl) => _$this._buttonUrl = buttonUrl;

  String _buttonText;
  String get buttonText => _$this._buttonText;
  set buttonText(String buttonText) => _$this._buttonText = buttonText;

  String _activityUrl;
  String get activityUrl => _$this._activityUrl;
  set activityUrl(String activityUrl) => _$this._activityUrl = activityUrl;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  int _onLive;
  int get onLive => _$this._onLive;
  set onLive(int onLive) => _$this._onLive = onLive;

  LiveHomeActivityBuilder();

  LiveHomeActivityBuilder get _$this {
    if (_$v != null) {
      _aid = _$v.aid;
      _type = _$v.type;
      _title = _$v.title;
      _logoUrl = _$v.logoUrl;
      _startAt = _$v.startAt;
      _endAt = _$v.endAt;
      _timeText = _$v.timeText;
      _buttonUrl = _$v.buttonUrl;
      _buttonText = _$v.buttonText;
      _activityUrl = _$v.activityUrl;
      _status = _$v.status;
      _onLive = _$v.onLive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveHomeActivity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LiveHomeActivity;
  }

  @override
  void update(void Function(LiveHomeActivityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LiveHomeActivity build() {
    final _$result = _$v ??
        new _$LiveHomeActivity._(
            aid: aid,
            type: type,
            title: title,
            logoUrl: logoUrl,
            startAt: startAt,
            endAt: endAt,
            timeText: timeText,
            buttonUrl: buttonUrl,
            buttonText: buttonText,
            activityUrl: activityUrl,
            status: status,
            onLive: onLive);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
