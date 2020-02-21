// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_whitelist.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Whitelist> _$whitelistSerializer = new _$WhitelistSerializer();

class _$WhitelistSerializer implements StructuredSerializer<Whitelist> {
  @override
  final Iterable<Type> types = const [Whitelist, _$Whitelist];
  @override
  final String wireName = 'Whitelist';

  @override
  Iterable<Object> serialize(Serializers serializers, Whitelist object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.displayName != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(object.displayName,
            specifiedType: const FullType(String)));
    }
    if (object.apkName != null) {
      result
        ..add('apk_name')
        ..add(serializers.serialize(object.apkName,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.md5 != null) {
      result
        ..add('md5')
        ..add(serializers.serialize(object.md5,
            specifiedType: const FullType(String)));
    }
    if (object.icon != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.icon,
            specifiedType: const FullType(String)));
    }
    if (object.biliUrl != null) {
      result
        ..add('bili_url')
        ..add(serializers.serialize(object.biliUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Whitelist deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WhitelistBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'apk_name':
          result.apkName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'md5':
          result.md5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bili_url':
          result.biliUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Whitelist extends Whitelist {
  @override
  final int size;
  @override
  final String displayName;
  @override
  final String apkName;
  @override
  final String url;
  @override
  final String md5;
  @override
  final String icon;
  @override
  final String biliUrl;

  factory _$Whitelist([void Function(WhitelistBuilder) updates]) =>
      (new WhitelistBuilder()..update(updates)).build();

  _$Whitelist._(
      {this.size,
      this.displayName,
      this.apkName,
      this.url,
      this.md5,
      this.icon,
      this.biliUrl})
      : super._();

  @override
  Whitelist rebuild(void Function(WhitelistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WhitelistBuilder toBuilder() => new WhitelistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Whitelist &&
        size == other.size &&
        displayName == other.displayName &&
        apkName == other.apkName &&
        url == other.url &&
        md5 == other.md5 &&
        icon == other.icon &&
        biliUrl == other.biliUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, size.hashCode), displayName.hashCode),
                        apkName.hashCode),
                    url.hashCode),
                md5.hashCode),
            icon.hashCode),
        biliUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Whitelist')
          ..add('size', size)
          ..add('displayName', displayName)
          ..add('apkName', apkName)
          ..add('url', url)
          ..add('md5', md5)
          ..add('icon', icon)
          ..add('biliUrl', biliUrl))
        .toString();
  }
}

class WhitelistBuilder implements Builder<Whitelist, WhitelistBuilder> {
  _$Whitelist _$v;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _apkName;
  String get apkName => _$this._apkName;
  set apkName(String apkName) => _$this._apkName = apkName;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _md5;
  String get md5 => _$this._md5;
  set md5(String md5) => _$this._md5 = md5;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  String _biliUrl;
  String get biliUrl => _$this._biliUrl;
  set biliUrl(String biliUrl) => _$this._biliUrl = biliUrl;

  WhitelistBuilder();

  WhitelistBuilder get _$this {
    if (_$v != null) {
      _size = _$v.size;
      _displayName = _$v.displayName;
      _apkName = _$v.apkName;
      _url = _$v.url;
      _md5 = _$v.md5;
      _icon = _$v.icon;
      _biliUrl = _$v.biliUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Whitelist other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Whitelist;
  }

  @override
  void update(void Function(WhitelistBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Whitelist build() {
    final _$result = _$v ??
        new _$Whitelist._(
            size: size,
            displayName: displayName,
            apkName: apkName,
            url: url,
            md5: md5,
            icon: icon,
            biliUrl: biliUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
