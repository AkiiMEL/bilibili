// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_tab_bar_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TabBarConfig> _$tabBarConfigSerializer =
    new _$TabBarConfigSerializer();

class _$TabBarConfigSerializer implements StructuredSerializer<TabBarConfig> {
  @override
  final Iterable<Type> types = const [TabBarConfig, _$TabBarConfig];
  @override
  final String wireName = 'TabBarConfig';

  @override
  Iterable<Object> serialize(Serializers serializers, TabBarConfig object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.noLoginAvatarType != null) {
      result
        ..add('no_login_avatar_type')
        ..add(serializers.serialize(object.noLoginAvatarType,
            specifiedType: const FullType(int)));
    }
    if (object.popupStyle != null) {
      result
        ..add('popup_style')
        ..add(serializers.serialize(object.popupStyle,
            specifiedType: const FullType(int)));
    }
    if (object.noLoginAvatar != null) {
      result
        ..add('no_login_avatar')
        ..add(serializers.serialize(object.noLoginAvatar,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TabBarConfig deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TabBarConfigBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'no_login_avatar_type':
          result.noLoginAvatarType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'popup_style':
          result.popupStyle = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'no_login_avatar':
          result.noLoginAvatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TabBarConfig extends TabBarConfig {
  @override
  final int noLoginAvatarType;
  @override
  final int popupStyle;
  @override
  final String noLoginAvatar;

  factory _$TabBarConfig([void Function(TabBarConfigBuilder) updates]) =>
      (new TabBarConfigBuilder()..update(updates)).build();

  _$TabBarConfig._(
      {this.noLoginAvatarType, this.popupStyle, this.noLoginAvatar})
      : super._();

  @override
  TabBarConfig rebuild(void Function(TabBarConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TabBarConfigBuilder toBuilder() => new TabBarConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabBarConfig &&
        noLoginAvatarType == other.noLoginAvatarType &&
        popupStyle == other.popupStyle &&
        noLoginAvatar == other.noLoginAvatar;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, noLoginAvatarType.hashCode), popupStyle.hashCode),
        noLoginAvatar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TabBarConfig')
          ..add('noLoginAvatarType', noLoginAvatarType)
          ..add('popupStyle', popupStyle)
          ..add('noLoginAvatar', noLoginAvatar))
        .toString();
  }
}

class TabBarConfigBuilder
    implements Builder<TabBarConfig, TabBarConfigBuilder> {
  _$TabBarConfig _$v;

  int _noLoginAvatarType;
  int get noLoginAvatarType => _$this._noLoginAvatarType;
  set noLoginAvatarType(int noLoginAvatarType) =>
      _$this._noLoginAvatarType = noLoginAvatarType;

  int _popupStyle;
  int get popupStyle => _$this._popupStyle;
  set popupStyle(int popupStyle) => _$this._popupStyle = popupStyle;

  String _noLoginAvatar;
  String get noLoginAvatar => _$this._noLoginAvatar;
  set noLoginAvatar(String noLoginAvatar) =>
      _$this._noLoginAvatar = noLoginAvatar;

  TabBarConfigBuilder();

  TabBarConfigBuilder get _$this {
    if (_$v != null) {
      _noLoginAvatarType = _$v.noLoginAvatarType;
      _popupStyle = _$v.popupStyle;
      _noLoginAvatar = _$v.noLoginAvatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabBarConfig other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TabBarConfig;
  }

  @override
  void update(void Function(TabBarConfigBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TabBarConfig build() {
    final _$result = _$v ??
        new _$TabBarConfig._(
            noLoginAvatarType: noLoginAvatarType,
            popupStyle: popupStyle,
            noLoginAvatar: noLoginAvatar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
