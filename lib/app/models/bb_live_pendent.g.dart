// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_live_pendent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LivePendent> _$livePendentSerializer = new _$LivePendentSerializer();

class _$LivePendentSerializer implements StructuredSerializer<LivePendent> {
  @override
  final Iterable<Type> types = const [LivePendent, _$LivePendent];
  @override
  final String wireName = 'LivePendent';

  @override
  Iterable<Object> serialize(Serializers serializers, LivePendent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(object.position,
            specifiedType: const FullType(int)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(String)));
    }
    if (object.pic != null) {
      result
        ..add('pic')
        ..add(serializers.serialize(object.pic,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LivePendent deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LivePendentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pic':
          result.pic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LivePendent extends LivePendent {
  @override
  final String content;
  @override
  final int position;
  @override
  final String color;
  @override
  final String pic;

  factory _$LivePendent([void Function(LivePendentBuilder) updates]) =>
      (new LivePendentBuilder()..update(updates)).build();

  _$LivePendent._({this.content, this.position, this.color, this.pic})
      : super._();

  @override
  LivePendent rebuild(void Function(LivePendentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LivePendentBuilder toBuilder() => new LivePendentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LivePendent &&
        content == other.content &&
        position == other.position &&
        color == other.color &&
        pic == other.pic;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, content.hashCode), position.hashCode), color.hashCode),
        pic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LivePendent')
          ..add('content', content)
          ..add('position', position)
          ..add('color', color)
          ..add('pic', pic))
        .toString();
  }
}

class LivePendentBuilder implements Builder<LivePendent, LivePendentBuilder> {
  _$LivePendent _$v;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _pic;
  String get pic => _$this._pic;
  set pic(String pic) => _$this._pic = pic;

  LivePendentBuilder();

  LivePendentBuilder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _position = _$v.position;
      _color = _$v.color;
      _pic = _$v.pic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LivePendent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LivePendent;
  }

  @override
  void update(void Function(LivePendentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LivePendent build() {
    final _$result = _$v ??
        new _$LivePendent._(
            content: content, position: position, color: color, pic: pic);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
