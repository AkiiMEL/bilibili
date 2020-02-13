// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_http_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HttpBody<Object>> _$httpBodySerializer = new _$HttpBodySerializer();
Serializer<HttpListBody<Object>> _$httpListBodySerializer =
    new _$HttpListBodySerializer();

class _$HttpBodySerializer implements StructuredSerializer<HttpBody<Object>> {
  @override
  final Iterable<Type> types = const [HttpBody, _$HttpBody];
  @override
  final String wireName = 'HttpBody';

  @override
  Iterable<Object> serialize(Serializers serializers, HttpBody<Object> object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterBody =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

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
    if (object.ttl != null) {
      result
        ..add('ttl')
        ..add(serializers.serialize(object.ttl,
            specifiedType: const FullType(int)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data, specifiedType: parameterBody));
    }
    return result;
  }

  @override
  HttpBody<Object> deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterBody =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new HttpBodyBuilder<Object>()
        : serializers.newBuilder(specifiedType) as HttpBodyBuilder;

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
        case 'ttl':
          result.ttl = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'data':
          result.data =
              serializers.deserialize(value, specifiedType: parameterBody);
          break;
      }
    }

    return result.build();
  }
}

class _$HttpListBodySerializer
    implements StructuredSerializer<HttpListBody<Object>> {
  @override
  final Iterable<Type> types = const [HttpListBody, _$HttpListBody];
  @override
  final String wireName = 'HttpListBody';

  @override
  Iterable<Object> serialize(
      Serializers serializers, HttpListBody<Object> object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterBody =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

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
    if (object.ttl != null) {
      result
        ..add('ttl')
        ..add(serializers.serialize(object.ttl,
            specifiedType: const FullType(int)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: new FullType(BuiltList, [parameterBody])));
    }
    return result;
  }

  @override
  HttpListBody<Object> deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterBody =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new HttpListBodyBuilder<Object>()
        : serializers.newBuilder(specifiedType) as HttpListBodyBuilder;

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
        case 'ttl':
          result.ttl = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: new FullType(BuiltList, [parameterBody]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$HttpBody<Body> extends HttpBody<Body> {
  @override
  final int code;
  @override
  final String message;
  @override
  final int ttl;
  @override
  final Body data;

  factory _$HttpBody([void Function(HttpBodyBuilder<Body>) updates]) =>
      (new HttpBodyBuilder<Body>()..update(updates)).build();

  _$HttpBody._({this.code, this.message, this.ttl, this.data}) : super._() {
    if (Body == dynamic) {
      throw new BuiltValueMissingGenericsError('HttpBody', 'Body');
    }
  }

  @override
  HttpBody<Body> rebuild(void Function(HttpBodyBuilder<Body>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpBodyBuilder<Body> toBuilder() =>
      new HttpBodyBuilder<Body>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpBody &&
        code == other.code &&
        message == other.message &&
        ttl == other.ttl &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, code.hashCode), message.hashCode), ttl.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpBody')
          ..add('code', code)
          ..add('message', message)
          ..add('ttl', ttl)
          ..add('data', data))
        .toString();
  }
}

class HttpBodyBuilder<Body>
    implements Builder<HttpBody<Body>, HttpBodyBuilder<Body>> {
  _$HttpBody<Body> _$v;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _ttl;
  int get ttl => _$this._ttl;
  set ttl(int ttl) => _$this._ttl = ttl;

  Body _data;
  Body get data => _$this._data;
  set data(Body data) => _$this._data = data;

  HttpBodyBuilder();

  HttpBodyBuilder<Body> get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _message = _$v.message;
      _ttl = _$v.ttl;
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpBody<Body> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HttpBody<Body>;
  }

  @override
  void update(void Function(HttpBodyBuilder<Body>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpBody<Body> build() {
    final _$result = _$v ??
        new _$HttpBody<Body>._(
            code: code, message: message, ttl: ttl, data: data);
    replace(_$result);
    return _$result;
  }
}

class _$HttpListBody<Body> extends HttpListBody<Body> {
  @override
  final int code;
  @override
  final String message;
  @override
  final int ttl;
  @override
  final BuiltList<Body> data;

  factory _$HttpListBody([void Function(HttpListBodyBuilder<Body>) updates]) =>
      (new HttpListBodyBuilder<Body>()..update(updates)).build();

  _$HttpListBody._({this.code, this.message, this.ttl, this.data}) : super._() {
    if (Body == dynamic) {
      throw new BuiltValueMissingGenericsError('HttpListBody', 'Body');
    }
  }

  @override
  HttpListBody<Body> rebuild(
          void Function(HttpListBodyBuilder<Body>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpListBodyBuilder<Body> toBuilder() =>
      new HttpListBodyBuilder<Body>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpListBody &&
        code == other.code &&
        message == other.message &&
        ttl == other.ttl &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, code.hashCode), message.hashCode), ttl.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpListBody')
          ..add('code', code)
          ..add('message', message)
          ..add('ttl', ttl)
          ..add('data', data))
        .toString();
  }
}

class HttpListBodyBuilder<Body>
    implements Builder<HttpListBody<Body>, HttpListBodyBuilder<Body>> {
  _$HttpListBody<Body> _$v;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _ttl;
  int get ttl => _$this._ttl;
  set ttl(int ttl) => _$this._ttl = ttl;

  ListBuilder<Body> _data;
  ListBuilder<Body> get data => _$this._data ??= new ListBuilder<Body>();
  set data(ListBuilder<Body> data) => _$this._data = data;

  HttpListBodyBuilder();

  HttpListBodyBuilder<Body> get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _message = _$v.message;
      _ttl = _$v.ttl;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpListBody<Body> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HttpListBody<Body>;
  }

  @override
  void update(void Function(HttpListBodyBuilder<Body>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpListBody<Body> build() {
    _$HttpListBody<Body> _$result;
    try {
      _$result = _$v ??
          new _$HttpListBody<Body>._(
              code: code, message: message, ttl: ttl, data: _data?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HttpListBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
