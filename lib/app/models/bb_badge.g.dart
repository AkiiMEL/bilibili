// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_badge.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Badge> _$badgeSerializer = new _$BadgeSerializer();

class _$BadgeSerializer implements StructuredSerializer<Badge> {
  @override
  final Iterable<Type> types = const [Badge, _$Badge];
  @override
  final String wireName = 'Badge';

  @override
  Iterable<Object> serialize(Serializers serializers, Badge object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.imageUrl != null) {
      result
        ..add('icon_bg_url')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Badge deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BadgeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon_bg_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Badge extends Badge {
  @override
  final String text;
  @override
  final String imageUrl;

  factory _$Badge([void Function(BadgeBuilder) updates]) =>
      (new BadgeBuilder()..update(updates)).build();

  _$Badge._({this.text, this.imageUrl}) : super._();

  @override
  Badge rebuild(void Function(BadgeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BadgeBuilder toBuilder() => new BadgeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Badge && text == other.text && imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, text.hashCode), imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Badge')
          ..add('text', text)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class BadgeBuilder implements Builder<Badge, BadgeBuilder> {
  _$Badge _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  BadgeBuilder();

  BadgeBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _imageUrl = _$v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Badge other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Badge;
  }

  @override
  void update(void Function(BadgeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Badge build() {
    final _$result = _$v ?? new _$Badge._(text: text, imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
