// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_service.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Service> _$serviceSerializer = new _$ServiceSerializer();

class _$ServiceSerializer implements StructuredSerializer<Service> {
  @override
  final Iterable<Type> types = const [Service, _$Service];
  @override
  final String wireName = 'Service';

  @override
  Iterable<Object> serialize(Serializers serializers, Service object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.display != null) {
      result
        ..add('display')
        ..add(serializers.serialize(object.display,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.icon != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.icon,
            specifiedType: const FullType(String)));
    }
    if (object.needLogin != null) {
      result
        ..add('need_login')
        ..add(serializers.serialize(object.needLogin,
            specifiedType: const FullType(int)));
    }
    if (object.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(object.uri,
            specifiedType: const FullType(String)));
    }
    if (object.globalRedDot != null) {
      result
        ..add('global_red_dot')
        ..add(serializers.serialize(object.globalRedDot,
            specifiedType: const FullType(int)));
    }
    if (object.redDot != null) {
      result
        ..add('red_dot')
        ..add(serializers.serialize(object.redDot,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Service deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'display':
          result.display = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'need_login':
          result.needLogin = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'global_red_dot':
          result.globalRedDot = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'red_dot':
          result.redDot = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Service extends Service {
  @override
  final int display;
  @override
  final String title;
  @override
  final String icon;
  @override
  final int needLogin;
  @override
  final String uri;
  @override
  final int globalRedDot;
  @override
  final int redDot;
  @override
  final int id;

  factory _$Service([void Function(ServiceBuilder) updates]) =>
      (new ServiceBuilder()..update(updates)).build();

  _$Service._(
      {this.display,
      this.title,
      this.icon,
      this.needLogin,
      this.uri,
      this.globalRedDot,
      this.redDot,
      this.id})
      : super._();

  @override
  Service rebuild(void Function(ServiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceBuilder toBuilder() => new ServiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Service &&
        display == other.display &&
        title == other.title &&
        icon == other.icon &&
        needLogin == other.needLogin &&
        uri == other.uri &&
        globalRedDot == other.globalRedDot &&
        redDot == other.redDot &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, display.hashCode), title.hashCode),
                            icon.hashCode),
                        needLogin.hashCode),
                    uri.hashCode),
                globalRedDot.hashCode),
            redDot.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Service')
          ..add('display', display)
          ..add('title', title)
          ..add('icon', icon)
          ..add('needLogin', needLogin)
          ..add('uri', uri)
          ..add('globalRedDot', globalRedDot)
          ..add('redDot', redDot)
          ..add('id', id))
        .toString();
  }
}

class ServiceBuilder implements Builder<Service, ServiceBuilder> {
  _$Service _$v;

  int _display;
  int get display => _$this._display;
  set display(int display) => _$this._display = display;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  int _needLogin;
  int get needLogin => _$this._needLogin;
  set needLogin(int needLogin) => _$this._needLogin = needLogin;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  int _globalRedDot;
  int get globalRedDot => _$this._globalRedDot;
  set globalRedDot(int globalRedDot) => _$this._globalRedDot = globalRedDot;

  int _redDot;
  int get redDot => _$this._redDot;
  set redDot(int redDot) => _$this._redDot = redDot;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ServiceBuilder();

  ServiceBuilder get _$this {
    if (_$v != null) {
      _display = _$v.display;
      _title = _$v.title;
      _icon = _$v.icon;
      _needLogin = _$v.needLogin;
      _uri = _$v.uri;
      _globalRedDot = _$v.globalRedDot;
      _redDot = _$v.redDot;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Service other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Service;
  }

  @override
  void update(void Function(ServiceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Service build() {
    final _$result = _$v ??
        new _$Service._(
            display: display,
            title: title,
            icon: icon,
            needLogin: needLogin,
            uri: uri,
            globalRedDot: globalRedDot,
            redDot: redDot,
            id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
