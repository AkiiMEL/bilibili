// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_serial.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Serial> _$serialSerializer = new _$SerialSerializer();

class _$SerialSerializer implements StructuredSerializer<Serial> {
  @override
  final Iterable<Type> types = const [Serial, _$Serial];
  @override
  final String wireName = 'Serial';

  @override
  Iterable<Object> serialize(Serializers serializers, Serial object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.movieName != null) {
      result
        ..add('movie_title')
        ..add(serializers.serialize(object.movieName,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('series_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.serialName != null) {
      result
        ..add('series_title')
        ..add(serializers.serialize(object.serialName,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Serial deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SerialBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'movie_title':
          result.movieName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'series_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'series_title':
          result.serialName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Serial extends Serial {
  @override
  final String movieName;
  @override
  final int id;
  @override
  final String serialName;

  factory _$Serial([void Function(SerialBuilder) updates]) =>
      (new SerialBuilder()..update(updates)).build();

  _$Serial._({this.movieName, this.id, this.serialName}) : super._();

  @override
  Serial rebuild(void Function(SerialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SerialBuilder toBuilder() => new SerialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Serial &&
        movieName == other.movieName &&
        id == other.id &&
        serialName == other.serialName;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, movieName.hashCode), id.hashCode), serialName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Serial')
          ..add('movieName', movieName)
          ..add('id', id)
          ..add('serialName', serialName))
        .toString();
  }
}

class SerialBuilder implements Builder<Serial, SerialBuilder> {
  _$Serial _$v;

  String _movieName;
  String get movieName => _$this._movieName;
  set movieName(String movieName) => _$this._movieName = movieName;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _serialName;
  String get serialName => _$this._serialName;
  set serialName(String serialName) => _$this._serialName = serialName;

  SerialBuilder();

  SerialBuilder get _$this {
    if (_$v != null) {
      _movieName = _$v.movieName;
      _id = _$v.id;
      _serialName = _$v.serialName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Serial other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Serial;
  }

  @override
  void update(void Function(SerialBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Serial build() {
    final _$result = _$v ??
        new _$Serial._(movieName: movieName, id: id, serialName: serialName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
