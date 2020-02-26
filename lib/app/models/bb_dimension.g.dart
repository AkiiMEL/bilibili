// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_dimension.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Dimension> _$dimensionSerializer = new _$DimensionSerializer();

class _$DimensionSerializer implements StructuredSerializer<Dimension> {
  @override
  final Iterable<Type> types = const [Dimension, _$Dimension];
  @override
  final String wireName = 'Dimension';

  @override
  Iterable<Object> serialize(Serializers serializers, Dimension object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(int)));
    }
    if (object.rotate != null) {
      result
        ..add('rotate')
        ..add(serializers.serialize(object.rotate,
            specifiedType: const FullType(int)));
    }
    if (object.width != null) {
      result
        ..add('width')
        ..add(serializers.serialize(object.width,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Dimension deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DimensionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rotate':
          result.rotate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Dimension extends Dimension {
  @override
  final int height;
  @override
  final int rotate;
  @override
  final int width;

  factory _$Dimension([void Function(DimensionBuilder) updates]) =>
      (new DimensionBuilder()..update(updates)).build();

  _$Dimension._({this.height, this.rotate, this.width}) : super._();

  @override
  Dimension rebuild(void Function(DimensionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DimensionBuilder toBuilder() => new DimensionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dimension &&
        height == other.height &&
        rotate == other.rotate &&
        width == other.width;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, height.hashCode), rotate.hashCode), width.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Dimension')
          ..add('height', height)
          ..add('rotate', rotate)
          ..add('width', width))
        .toString();
  }
}

class DimensionBuilder implements Builder<Dimension, DimensionBuilder> {
  _$Dimension _$v;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  int _rotate;
  int get rotate => _$this._rotate;
  set rotate(int rotate) => _$this._rotate = rotate;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  DimensionBuilder();

  DimensionBuilder get _$this {
    if (_$v != null) {
      _height = _$v.height;
      _rotate = _$v.rotate;
      _width = _$v.width;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dimension other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Dimension;
  }

  @override
  void update(void Function(DimensionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Dimension build() {
    final _$result =
        _$v ?? new _$Dimension._(height: height, rotate: rotate, width: width);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
