// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_bangumi_report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Report> _$reportSerializer = new _$ReportSerializer();

class _$ReportSerializer implements StructuredSerializer<Report> {
  @override
  final Iterable<Type> types = const [Report, _$Report];
  @override
  final String wireName = 'Report';

  @override
  Iterable<Object> serialize(Serializers serializers, Report object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cardType != null) {
      result
        ..add('card_type')
        ..add(serializers.serialize(object.cardType,
            specifiedType: const FullType(String)));
    }
    if (object.itemId != null) {
      result
        ..add('item_id')
        ..add(serializers.serialize(object.itemId,
            specifiedType: const FullType(String)));
    }
    if (object.moduleId != null) {
      result
        ..add('module_id')
        ..add(serializers.serialize(object.moduleId,
            specifiedType: const FullType(String)));
    }
    if (object.moduleType != null) {
      result
        ..add('module_type')
        ..add(serializers.serialize(object.moduleType,
            specifiedType: const FullType(String)));
    }
    if (object.oid != null) {
      result
        ..add('oid')
        ..add(serializers.serialize(object.oid,
            specifiedType: const FullType(String)));
    }
    if (object.seasonType != null) {
      result
        ..add('season_type')
        ..add(serializers.serialize(object.seasonType,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Report deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReportBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'card_type':
          result.cardType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'item_id':
          result.itemId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'module_id':
          result.moduleId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'module_type':
          result.moduleType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'oid':
          result.oid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'season_type':
          result.seasonType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Report extends Report {
  @override
  final String cardType;
  @override
  final String itemId;
  @override
  final String moduleId;
  @override
  final String moduleType;
  @override
  final String oid;
  @override
  final String seasonType;

  factory _$Report([void Function(ReportBuilder) updates]) =>
      (new ReportBuilder()..update(updates)).build();

  _$Report._(
      {this.cardType,
      this.itemId,
      this.moduleId,
      this.moduleType,
      this.oid,
      this.seasonType})
      : super._();

  @override
  Report rebuild(void Function(ReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportBuilder toBuilder() => new ReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Report &&
        cardType == other.cardType &&
        itemId == other.itemId &&
        moduleId == other.moduleId &&
        moduleType == other.moduleType &&
        oid == other.oid &&
        seasonType == other.seasonType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, cardType.hashCode), itemId.hashCode),
                    moduleId.hashCode),
                moduleType.hashCode),
            oid.hashCode),
        seasonType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Report')
          ..add('cardType', cardType)
          ..add('itemId', itemId)
          ..add('moduleId', moduleId)
          ..add('moduleType', moduleType)
          ..add('oid', oid)
          ..add('seasonType', seasonType))
        .toString();
  }
}

class ReportBuilder implements Builder<Report, ReportBuilder> {
  _$Report _$v;

  String _cardType;
  String get cardType => _$this._cardType;
  set cardType(String cardType) => _$this._cardType = cardType;

  String _itemId;
  String get itemId => _$this._itemId;
  set itemId(String itemId) => _$this._itemId = itemId;

  String _moduleId;
  String get moduleId => _$this._moduleId;
  set moduleId(String moduleId) => _$this._moduleId = moduleId;

  String _moduleType;
  String get moduleType => _$this._moduleType;
  set moduleType(String moduleType) => _$this._moduleType = moduleType;

  String _oid;
  String get oid => _$this._oid;
  set oid(String oid) => _$this._oid = oid;

  String _seasonType;
  String get seasonType => _$this._seasonType;
  set seasonType(String seasonType) => _$this._seasonType = seasonType;

  ReportBuilder();

  ReportBuilder get _$this {
    if (_$v != null) {
      _cardType = _$v.cardType;
      _itemId = _$v.itemId;
      _moduleId = _$v.moduleId;
      _moduleType = _$v.moduleType;
      _oid = _$v.oid;
      _seasonType = _$v.seasonType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Report other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Report;
  }

  @override
  void update(void Function(ReportBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Report build() {
    final _$result = _$v ??
        new _$Report._(
            cardType: cardType,
            itemId: itemId,
            moduleId: moduleId,
            moduleType: moduleType,
            oid: oid,
            seasonType: seasonType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
