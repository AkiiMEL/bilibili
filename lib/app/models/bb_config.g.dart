// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Config> _$configSerializer = new _$ConfigSerializer();

class _$ConfigSerializer implements StructuredSerializer<Config> {
  @override
  final Iterable<Type> types = const [Config, _$Config];
  @override
  final String wireName = 'Config';

  @override
  Iterable<Object> serialize(Serializers serializers, Config object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.column != null) {
      result
        ..add('column')
        ..add(serializers.serialize(object.column,
            specifiedType: const FullType(int)));
    }
    if (object.autoplayCard != null) {
      result
        ..add('autoplay_card')
        ..add(serializers.serialize(object.autoplayCard,
            specifiedType: const FullType(int)));
    }
    if (object.feedCleanAbtest != null) {
      result
        ..add('feed_clean_abtest')
        ..add(serializers.serialize(object.feedCleanAbtest,
            specifiedType: const FullType(int)));
    }
    if (object.homeTransferTest != null) {
      result
        ..add('home_transfer_test')
        ..add(serializers.serialize(object.homeTransferTest,
            specifiedType: const FullType(int)));
    }
    if (object.autoRefreshTime != null) {
      result
        ..add('auto_refresh_time')
        ..add(serializers.serialize(object.autoRefreshTime,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Config deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConfigBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'column':
          result.column = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'autoplay_card':
          result.autoplayCard = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'feed_clean_abtest':
          result.feedCleanAbtest = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'home_transfer_test':
          result.homeTransferTest = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'auto_refresh_time':
          result.autoRefreshTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Config extends Config {
  @override
  final int column;
  @override
  final int autoplayCard;
  @override
  final int feedCleanAbtest;
  @override
  final int homeTransferTest;
  @override
  final int autoRefreshTime;

  factory _$Config([void Function(ConfigBuilder) updates]) =>
      (new ConfigBuilder()..update(updates)).build();

  _$Config._(
      {this.column,
      this.autoplayCard,
      this.feedCleanAbtest,
      this.homeTransferTest,
      this.autoRefreshTime})
      : super._();

  @override
  Config rebuild(void Function(ConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigBuilder toBuilder() => new ConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Config &&
        column == other.column &&
        autoplayCard == other.autoplayCard &&
        feedCleanAbtest == other.feedCleanAbtest &&
        homeTransferTest == other.homeTransferTest &&
        autoRefreshTime == other.autoRefreshTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, column.hashCode), autoplayCard.hashCode),
                feedCleanAbtest.hashCode),
            homeTransferTest.hashCode),
        autoRefreshTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Config')
          ..add('column', column)
          ..add('autoplayCard', autoplayCard)
          ..add('feedCleanAbtest', feedCleanAbtest)
          ..add('homeTransferTest', homeTransferTest)
          ..add('autoRefreshTime', autoRefreshTime))
        .toString();
  }
}

class ConfigBuilder implements Builder<Config, ConfigBuilder> {
  _$Config _$v;

  int _column;
  int get column => _$this._column;
  set column(int column) => _$this._column = column;

  int _autoplayCard;
  int get autoplayCard => _$this._autoplayCard;
  set autoplayCard(int autoplayCard) => _$this._autoplayCard = autoplayCard;

  int _feedCleanAbtest;
  int get feedCleanAbtest => _$this._feedCleanAbtest;
  set feedCleanAbtest(int feedCleanAbtest) =>
      _$this._feedCleanAbtest = feedCleanAbtest;

  int _homeTransferTest;
  int get homeTransferTest => _$this._homeTransferTest;
  set homeTransferTest(int homeTransferTest) =>
      _$this._homeTransferTest = homeTransferTest;

  int _autoRefreshTime;
  int get autoRefreshTime => _$this._autoRefreshTime;
  set autoRefreshTime(int autoRefreshTime) =>
      _$this._autoRefreshTime = autoRefreshTime;

  ConfigBuilder();

  ConfigBuilder get _$this {
    if (_$v != null) {
      _column = _$v.column;
      _autoplayCard = _$v.autoplayCard;
      _feedCleanAbtest = _$v.feedCleanAbtest;
      _homeTransferTest = _$v.homeTransferTest;
      _autoRefreshTime = _$v.autoRefreshTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Config other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Config;
  }

  @override
  void update(void Function(ConfigBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Config build() {
    final _$result = _$v ??
        new _$Config._(
            column: column,
            autoplayCard: autoplayCard,
            feedCleanAbtest: feedCleanAbtest,
            homeTransferTest: homeTransferTest,
            autoRefreshTime: autoRefreshTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
