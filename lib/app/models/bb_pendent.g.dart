// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_pendent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Pendant> _$pendantSerializer = new _$PendantSerializer();

class _$PendantSerializer implements StructuredSerializer<Pendant> {
  @override
  final Iterable<Type> types = const [Pendant, _$Pendant];
  @override
  final String wireName = 'Pendant';

  @override
  Iterable<Object> serialize(Serializers serializers, Pendant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Pendant deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PendantBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Pendant extends Pendant {
  @override
  final String image;

  factory _$Pendant([void Function(PendantBuilder) updates]) =>
      (new PendantBuilder()..update(updates)).build();

  _$Pendant._({this.image}) : super._();

  @override
  Pendant rebuild(void Function(PendantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PendantBuilder toBuilder() => new PendantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pendant && image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(0, image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Pendant')..add('image', image))
        .toString();
  }
}

class PendantBuilder implements Builder<Pendant, PendantBuilder> {
  _$Pendant _$v;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  PendantBuilder();

  PendantBuilder get _$this {
    if (_$v != null) {
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pendant other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Pendant;
  }

  @override
  void update(void Function(PendantBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Pendant build() {
    final _$result = _$v ?? new _$Pendant._(image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
