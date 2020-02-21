// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_tab_bar_http_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TabBarHttpBody> _$tabBarHttpBodySerializer =
    new _$TabBarHttpBodySerializer();

class _$TabBarHttpBodySerializer
    implements StructuredSerializer<TabBarHttpBody> {
  @override
  final Iterable<Type> types = const [TabBarHttpBody, _$TabBarHttpBody];
  @override
  final String wireName = 'TabBarHttpBody';

  @override
  Iterable<Object> serialize(Serializers serializers, TabBarHttpBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
            specifiedType: const FullType(int)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.config != null) {
      result
        ..add('config')
        ..add(serializers.serialize(object.config,
            specifiedType: const FullType(TabBarConfig)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(TabBarDisplay)));
    }
    return result;
  }

  @override
  TabBarHttpBody deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TabBarHttpBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'config':
          result.config.replace(serializers.deserialize(value,
              specifiedType: const FullType(TabBarConfig)) as TabBarConfig);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(TabBarDisplay)) as TabBarDisplay);
          break;
      }
    }

    return result.build();
  }
}

class _$TabBarHttpBody extends TabBarHttpBody {
  @override
  final int code;
  @override
  final String message;
  @override
  final TabBarConfig config;
  @override
  final TabBarDisplay data;

  factory _$TabBarHttpBody([void Function(TabBarHttpBodyBuilder) updates]) =>
      (new TabBarHttpBodyBuilder()..update(updates)).build();

  _$TabBarHttpBody._({this.code, this.message, this.config, this.data})
      : super._();

  @override
  TabBarHttpBody rebuild(void Function(TabBarHttpBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TabBarHttpBodyBuilder toBuilder() =>
      new TabBarHttpBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabBarHttpBody &&
        code == other.code &&
        message == other.message &&
        config == other.config &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, code.hashCode), message.hashCode), config.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TabBarHttpBody')
          ..add('code', code)
          ..add('message', message)
          ..add('config', config)
          ..add('data', data))
        .toString();
  }
}

class TabBarHttpBodyBuilder
    implements Builder<TabBarHttpBody, TabBarHttpBodyBuilder> {
  _$TabBarHttpBody _$v;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  TabBarConfigBuilder _config;
  TabBarConfigBuilder get config =>
      _$this._config ??= new TabBarConfigBuilder();
  set config(TabBarConfigBuilder config) => _$this._config = config;

  TabBarDisplayBuilder _data;
  TabBarDisplayBuilder get data => _$this._data ??= new TabBarDisplayBuilder();
  set data(TabBarDisplayBuilder data) => _$this._data = data;

  TabBarHttpBodyBuilder();

  TabBarHttpBodyBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _message = _$v.message;
      _config = _$v.config?.toBuilder();
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabBarHttpBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TabBarHttpBody;
  }

  @override
  void update(void Function(TabBarHttpBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TabBarHttpBody build() {
    _$TabBarHttpBody _$result;
    try {
      _$result = _$v ??
          new _$TabBarHttpBody._(
              code: code,
              message: message,
              config: _config?.build(),
              data: _data?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TabBarHttpBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
