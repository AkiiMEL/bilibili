// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_publish.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Publish> _$publishSerializer = new _$PublishSerializer();

class _$PublishSerializer implements StructuredSerializer<Publish> {
  @override
  final Iterable<Type> types = const [Publish, _$Publish];
  @override
  final String wireName = 'Publish';

  @override
  Iterable<Object> serialize(Serializers serializers, Publish object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.isFinish != null) {
      result
        ..add('is_finish')
        ..add(serializers.serialize(object.isFinish,
            specifiedType: const FullType(int)));
    }
    if (object.isStarted != null) {
      result
        ..add('is_started')
        ..add(serializers.serialize(object.isStarted,
            specifiedType: const FullType(int)));
    }
    if (object.pubTime != null) {
      result
        ..add('pub_time')
        ..add(serializers.serialize(object.pubTime,
            specifiedType: const FullType(String)));
    }
    if (object.pubTimeShow != null) {
      result
        ..add('pub_time_show')
        ..add(serializers.serialize(object.pubTimeShow,
            specifiedType: const FullType(String)));
    }
    if (object.releaseDateShow != null) {
      result
        ..add('release_date_show')
        ..add(serializers.serialize(object.releaseDateShow,
            specifiedType: const FullType(String)));
    }
    if (object.timeLengthShow != null) {
      result
        ..add('time_length_show')
        ..add(serializers.serialize(object.timeLengthShow,
            specifiedType: const FullType(String)));
    }
    if (object.unknowPubDate != null) {
      result
        ..add('unknow_pub_date')
        ..add(serializers.serialize(object.unknowPubDate,
            specifiedType: const FullType(int)));
    }
    if (object.weekday != null) {
      result
        ..add('weekday')
        ..add(serializers.serialize(object.weekday,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Publish deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PublishBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'is_finish':
          result.isFinish = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_started':
          result.isStarted = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pub_time':
          result.pubTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pub_time_show':
          result.pubTimeShow = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date_show':
          result.releaseDateShow = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time_length_show':
          result.timeLengthShow = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'unknow_pub_date':
          result.unknowPubDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'weekday':
          result.weekday = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Publish extends Publish {
  @override
  final int isFinish;
  @override
  final int isStarted;
  @override
  final String pubTime;
  @override
  final String pubTimeShow;
  @override
  final String releaseDateShow;
  @override
  final String timeLengthShow;
  @override
  final int unknowPubDate;
  @override
  final int weekday;

  factory _$Publish([void Function(PublishBuilder) updates]) =>
      (new PublishBuilder()..update(updates)).build();

  _$Publish._(
      {this.isFinish,
      this.isStarted,
      this.pubTime,
      this.pubTimeShow,
      this.releaseDateShow,
      this.timeLengthShow,
      this.unknowPubDate,
      this.weekday})
      : super._();

  @override
  Publish rebuild(void Function(PublishBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PublishBuilder toBuilder() => new PublishBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Publish &&
        isFinish == other.isFinish &&
        isStarted == other.isStarted &&
        pubTime == other.pubTime &&
        pubTimeShow == other.pubTimeShow &&
        releaseDateShow == other.releaseDateShow &&
        timeLengthShow == other.timeLengthShow &&
        unknowPubDate == other.unknowPubDate &&
        weekday == other.weekday;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, isFinish.hashCode), isStarted.hashCode),
                            pubTime.hashCode),
                        pubTimeShow.hashCode),
                    releaseDateShow.hashCode),
                timeLengthShow.hashCode),
            unknowPubDate.hashCode),
        weekday.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Publish')
          ..add('isFinish', isFinish)
          ..add('isStarted', isStarted)
          ..add('pubTime', pubTime)
          ..add('pubTimeShow', pubTimeShow)
          ..add('releaseDateShow', releaseDateShow)
          ..add('timeLengthShow', timeLengthShow)
          ..add('unknowPubDate', unknowPubDate)
          ..add('weekday', weekday))
        .toString();
  }
}

class PublishBuilder implements Builder<Publish, PublishBuilder> {
  _$Publish _$v;

  int _isFinish;
  int get isFinish => _$this._isFinish;
  set isFinish(int isFinish) => _$this._isFinish = isFinish;

  int _isStarted;
  int get isStarted => _$this._isStarted;
  set isStarted(int isStarted) => _$this._isStarted = isStarted;

  String _pubTime;
  String get pubTime => _$this._pubTime;
  set pubTime(String pubTime) => _$this._pubTime = pubTime;

  String _pubTimeShow;
  String get pubTimeShow => _$this._pubTimeShow;
  set pubTimeShow(String pubTimeShow) => _$this._pubTimeShow = pubTimeShow;

  String _releaseDateShow;
  String get releaseDateShow => _$this._releaseDateShow;
  set releaseDateShow(String releaseDateShow) =>
      _$this._releaseDateShow = releaseDateShow;

  String _timeLengthShow;
  String get timeLengthShow => _$this._timeLengthShow;
  set timeLengthShow(String timeLengthShow) =>
      _$this._timeLengthShow = timeLengthShow;

  int _unknowPubDate;
  int get unknowPubDate => _$this._unknowPubDate;
  set unknowPubDate(int unknowPubDate) => _$this._unknowPubDate = unknowPubDate;

  int _weekday;
  int get weekday => _$this._weekday;
  set weekday(int weekday) => _$this._weekday = weekday;

  PublishBuilder();

  PublishBuilder get _$this {
    if (_$v != null) {
      _isFinish = _$v.isFinish;
      _isStarted = _$v.isStarted;
      _pubTime = _$v.pubTime;
      _pubTimeShow = _$v.pubTimeShow;
      _releaseDateShow = _$v.releaseDateShow;
      _timeLengthShow = _$v.timeLengthShow;
      _unknowPubDate = _$v.unknowPubDate;
      _weekday = _$v.weekday;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Publish other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Publish;
  }

  @override
  void update(void Function(PublishBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Publish build() {
    final _$result = _$v ??
        new _$Publish._(
            isFinish: isFinish,
            isStarted: isStarted,
            pubTime: pubTime,
            pubTimeShow: pubTimeShow,
            releaseDateShow: releaseDateShow,
            timeLengthShow: timeLengthShow,
            unknowPubDate: unknowPubDate,
            weekday: weekday);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
