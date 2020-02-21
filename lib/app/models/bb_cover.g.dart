// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_cover.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Cover> _$coverSerializer = new _$CoverSerializer();

class _$CoverSerializer implements StructuredSerializer<Cover> {
  @override
  final Iterable<Type> types = const [Cover, _$Cover];
  @override
  final String wireName = 'Cover';

  @override
  Iterable<Object> serialize(Serializers serializers, Cover object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.loop != null) {
      result
        ..add('loop')
        ..add(serializers.serialize(object.loop,
            specifiedType: const FullType(int)));
    }
    if (object.imageHeight != null) {
      result
        ..add('image_height')
        ..add(serializers.serialize(object.imageHeight,
            specifiedType: const FullType(int)));
    }
    if (object.imageWidth != null) {
      result
        ..add('image_width')
        ..add(serializers.serialize(object.imageWidth,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Cover deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoverBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'loop':
          result.loop = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'image_height':
          result.imageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'image_width':
          result.imageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Cover extends Cover {
  @override
  final String url;
  @override
  final int loop;
  @override
  final int imageHeight;
  @override
  final int imageWidth;

  factory _$Cover([void Function(CoverBuilder) updates]) =>
      (new CoverBuilder()..update(updates)).build();

  _$Cover._({this.url, this.loop, this.imageHeight, this.imageWidth})
      : super._();

  @override
  Cover rebuild(void Function(CoverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoverBuilder toBuilder() => new CoverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cover &&
        url == other.url &&
        loop == other.loop &&
        imageHeight == other.imageHeight &&
        imageWidth == other.imageWidth;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, url.hashCode), loop.hashCode), imageHeight.hashCode),
        imageWidth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Cover')
          ..add('url', url)
          ..add('loop', loop)
          ..add('imageHeight', imageHeight)
          ..add('imageWidth', imageWidth))
        .toString();
  }
}

class CoverBuilder implements Builder<Cover, CoverBuilder> {
  _$Cover _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _loop;
  int get loop => _$this._loop;
  set loop(int loop) => _$this._loop = loop;

  int _imageHeight;
  int get imageHeight => _$this._imageHeight;
  set imageHeight(int imageHeight) => _$this._imageHeight = imageHeight;

  int _imageWidth;
  int get imageWidth => _$this._imageWidth;
  set imageWidth(int imageWidth) => _$this._imageWidth = imageWidth;

  CoverBuilder();

  CoverBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _loop = _$v.loop;
      _imageHeight = _$v.imageHeight;
      _imageWidth = _$v.imageWidth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cover other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Cover;
  }

  @override
  void update(void Function(CoverBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Cover build() {
    final _$result = _$v ??
        new _$Cover._(
            url: url,
            loop: loop,
            imageHeight: imageHeight,
            imageWidth: imageWidth);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
