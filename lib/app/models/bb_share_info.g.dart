// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_share_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShareInfo> _$shareInfoSerializer = new _$ShareInfoSerializer();

class _$ShareInfoSerializer implements StructuredSerializer<ShareInfo> {
  @override
  final Iterable<Type> types = const [ShareInfo, _$ShareInfo];
  @override
  final String wireName = 'ShareInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, ShareInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.subtitle != null) {
      result
        ..add('subtitle')
        ..add(serializers.serialize(object.subtitle,
            specifiedType: const FullType(String)));
    }
    if (object.imageUrl != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ShareInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShareInfoBuilder();

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
        case 'subtitle':
          result.subtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ShareInfo extends ShareInfo {
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String imageUrl;

  factory _$ShareInfo([void Function(ShareInfoBuilder) updates]) =>
      (new ShareInfoBuilder()..update(updates)).build();

  _$ShareInfo._({this.title, this.subtitle, this.imageUrl}) : super._();

  @override
  ShareInfo rebuild(void Function(ShareInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareInfoBuilder toBuilder() => new ShareInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareInfo &&
        title == other.title &&
        subtitle == other.subtitle &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), subtitle.hashCode), imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShareInfo')
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class ShareInfoBuilder implements Builder<ShareInfo, ShareInfoBuilder> {
  _$ShareInfo _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _subtitle;
  String get subtitle => _$this._subtitle;
  set subtitle(String subtitle) => _$this._subtitle = subtitle;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  ShareInfoBuilder();

  ShareInfoBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _subtitle = _$v.subtitle;
      _imageUrl = _$v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ShareInfo;
  }

  @override
  void update(void Function(ShareInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShareInfo build() {
    final _$result = _$v ??
        new _$ShareInfo._(title: title, subtitle: subtitle, imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
