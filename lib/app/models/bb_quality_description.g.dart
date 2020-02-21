// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_quality_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QualityDescription> _$qualityDescriptionSerializer =
    new _$QualityDescriptionSerializer();

class _$QualityDescriptionSerializer
    implements StructuredSerializer<QualityDescription> {
  @override
  final Iterable<Type> types = const [QualityDescription, _$QualityDescription];
  @override
  final String wireName = 'QualityDescription';

  @override
  Iterable<Object> serialize(Serializers serializers, QualityDescription object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.desc != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(object.desc,
            specifiedType: const FullType(String)));
    }
    if (object.qn != null) {
      result
        ..add('qn')
        ..add(serializers.serialize(object.qn,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  QualityDescription deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QualityDescriptionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qn':
          result.qn = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$QualityDescription extends QualityDescription {
  @override
  final String desc;
  @override
  final int qn;

  factory _$QualityDescription(
          [void Function(QualityDescriptionBuilder) updates]) =>
      (new QualityDescriptionBuilder()..update(updates)).build();

  _$QualityDescription._({this.desc, this.qn}) : super._();

  @override
  QualityDescription rebuild(
          void Function(QualityDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QualityDescriptionBuilder toBuilder() =>
      new QualityDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QualityDescription && desc == other.desc && qn == other.qn;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, desc.hashCode), qn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('QualityDescription')
          ..add('desc', desc)
          ..add('qn', qn))
        .toString();
  }
}

class QualityDescriptionBuilder
    implements Builder<QualityDescription, QualityDescriptionBuilder> {
  _$QualityDescription _$v;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  int _qn;
  int get qn => _$this._qn;
  set qn(int qn) => _$this._qn = qn;

  QualityDescriptionBuilder();

  QualityDescriptionBuilder get _$this {
    if (_$v != null) {
      _desc = _$v.desc;
      _qn = _$v.qn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QualityDescription other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$QualityDescription;
  }

  @override
  void update(void Function(QualityDescriptionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QualityDescription build() {
    final _$result = _$v ?? new _$QualityDescription._(desc: desc, qn: qn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
