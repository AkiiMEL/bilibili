// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_threshold.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Threshold> _$thresholdSerializer = new _$ThresholdSerializer();

class _$ThresholdSerializer implements StructuredSerializer<Threshold> {
  @override
  final Iterable<Type> types = const [Threshold, _$Threshold];
  @override
  final String wireName = 'Threshold';

  @override
  Iterable<Object> serialize(Serializers serializers, Threshold object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.bp != null) {
      result
        ..add('bp')
        ..add(serializers.serialize(object.bp,
            specifiedType: const FullType(int)));
    }
    if (object.days != null) {
      result
        ..add('days')
        ..add(serializers.serialize(object.days,
            specifiedType: const FullType(int)));
    }
    if (object.daysText != null) {
      result
        ..add('days_text')
        ..add(serializers.serialize(object.daysText,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Threshold deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThresholdBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'bp':
          result.bp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'days':
          result.days = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'days_text':
          result.daysText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Threshold extends Threshold {
  @override
  final int bp;
  @override
  final int days;
  @override
  final String daysText;

  factory _$Threshold([void Function(ThresholdBuilder) updates]) =>
      (new ThresholdBuilder()..update(updates)).build();

  _$Threshold._({this.bp, this.days, this.daysText}) : super._();

  @override
  Threshold rebuild(void Function(ThresholdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThresholdBuilder toBuilder() => new ThresholdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Threshold &&
        bp == other.bp &&
        days == other.days &&
        daysText == other.daysText;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, bp.hashCode), days.hashCode), daysText.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Threshold')
          ..add('bp', bp)
          ..add('days', days)
          ..add('daysText', daysText))
        .toString();
  }
}

class ThresholdBuilder implements Builder<Threshold, ThresholdBuilder> {
  _$Threshold _$v;

  int _bp;
  int get bp => _$this._bp;
  set bp(int bp) => _$this._bp = bp;

  int _days;
  int get days => _$this._days;
  set days(int days) => _$this._days = days;

  String _daysText;
  String get daysText => _$this._daysText;
  set daysText(String daysText) => _$this._daysText = daysText;

  ThresholdBuilder();

  ThresholdBuilder get _$this {
    if (_$v != null) {
      _bp = _$v.bp;
      _days = _$v.days;
      _daysText = _$v.daysText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Threshold other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Threshold;
  }

  @override
  void update(void Function(ThresholdBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Threshold build() {
    final _$result =
        _$v ?? new _$Threshold._(bp: bp, days: days, daysText: daysText);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
