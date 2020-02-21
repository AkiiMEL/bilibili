// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_advertisement_creative_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AdvertisementCreativeContent>
    _$advertisementCreativeContentSerializer =
    new _$AdvertisementCreativeContentSerializer();

class _$AdvertisementCreativeContentSerializer
    implements StructuredSerializer<AdvertisementCreativeContent> {
  @override
  final Iterable<Type> types = const [
    AdvertisementCreativeContent,
    _$AdvertisementCreativeContent
  ];
  @override
  final String wireName = 'AdvertisementCreativeContent';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AdvertisementCreativeContent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.imageUrl != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    if (object.imageMd5 != null) {
      result
        ..add('image_md5')
        ..add(serializers.serialize(object.imageMd5,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.clickUrl != null) {
      result
        ..add('click_url')
        ..add(serializers.serialize(object.clickUrl,
            specifiedType: const FullType(String)));
    }
    if (object.showUrl != null) {
      result
        ..add('show_url')
        ..add(serializers.serialize(object.showUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AdvertisementCreativeContent deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdvertisementCreativeContentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_md5':
          result.imageMd5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'click_url':
          result.clickUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'show_url':
          result.showUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AdvertisementCreativeContent extends AdvertisementCreativeContent {
  @override
  final String title;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String imageMd5;
  @override
  final String url;
  @override
  final String clickUrl;
  @override
  final String showUrl;

  factory _$AdvertisementCreativeContent(
          [void Function(AdvertisementCreativeContentBuilder) updates]) =>
      (new AdvertisementCreativeContentBuilder()..update(updates)).build();

  _$AdvertisementCreativeContent._(
      {this.title,
      this.description,
      this.imageUrl,
      this.imageMd5,
      this.url,
      this.clickUrl,
      this.showUrl})
      : super._();

  @override
  AdvertisementCreativeContent rebuild(
          void Function(AdvertisementCreativeContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvertisementCreativeContentBuilder toBuilder() =>
      new AdvertisementCreativeContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvertisementCreativeContent &&
        title == other.title &&
        description == other.description &&
        imageUrl == other.imageUrl &&
        imageMd5 == other.imageMd5 &&
        url == other.url &&
        clickUrl == other.clickUrl &&
        showUrl == other.showUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, title.hashCode), description.hashCode),
                        imageUrl.hashCode),
                    imageMd5.hashCode),
                url.hashCode),
            clickUrl.hashCode),
        showUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AdvertisementCreativeContent')
          ..add('title', title)
          ..add('description', description)
          ..add('imageUrl', imageUrl)
          ..add('imageMd5', imageMd5)
          ..add('url', url)
          ..add('clickUrl', clickUrl)
          ..add('showUrl', showUrl))
        .toString();
  }
}

class AdvertisementCreativeContentBuilder
    implements
        Builder<AdvertisementCreativeContent,
            AdvertisementCreativeContentBuilder> {
  _$AdvertisementCreativeContent _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _imageMd5;
  String get imageMd5 => _$this._imageMd5;
  set imageMd5(String imageMd5) => _$this._imageMd5 = imageMd5;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _clickUrl;
  String get clickUrl => _$this._clickUrl;
  set clickUrl(String clickUrl) => _$this._clickUrl = clickUrl;

  String _showUrl;
  String get showUrl => _$this._showUrl;
  set showUrl(String showUrl) => _$this._showUrl = showUrl;

  AdvertisementCreativeContentBuilder();

  AdvertisementCreativeContentBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _imageUrl = _$v.imageUrl;
      _imageMd5 = _$v.imageMd5;
      _url = _$v.url;
      _clickUrl = _$v.clickUrl;
      _showUrl = _$v.showUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvertisementCreativeContent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AdvertisementCreativeContent;
  }

  @override
  void update(void Function(AdvertisementCreativeContentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AdvertisementCreativeContent build() {
    final _$result = _$v ??
        new _$AdvertisementCreativeContent._(
            title: title,
            description: description,
            imageUrl: imageUrl,
            imageMd5: imageMd5,
            url: url,
            clickUrl: clickUrl,
            showUrl: showUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
