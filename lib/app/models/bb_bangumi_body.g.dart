// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_bangumi_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BangumiBody> _$bangumiBodySerializer = new _$BangumiBodySerializer();

class _$BangumiBodySerializer implements StructuredSerializer<BangumiBody> {
  @override
  final Iterable<Type> types = const [BangumiBody, _$BangumiBody];
  @override
  final String wireName = 'BangumiBody';

  @override
  Iterable<Object> serialize(Serializers serializers, BangumiBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.hot != null) {
      result
        ..add('hot')
        ..add(serializers.serialize(object.hot,
            specifiedType: const FullType(BangumiBodyPopular)));
    }
    if (object.modules != null) {
      result
        ..add('modules')
        ..add(serializers.serialize(object.modules,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Module)])));
    }
    if (object.regions != null) {
      result
        ..add('regions')
        ..add(serializers.serialize(object.regions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Region)])));
    }
    return result;
  }

  @override
  BangumiBody deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BangumiBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'hot':
          result.hot.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BangumiBodyPopular))
              as BangumiBodyPopular);
          break;
        case 'modules':
          result.modules.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Module)]))
              as BuiltList<Object>);
          break;
        case 'regions':
          result.regions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Region)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BangumiBody extends BangumiBody {
  @override
  final BangumiBodyPopular hot;
  @override
  final BuiltList<Module> modules;
  @override
  final BuiltList<Region> regions;

  factory _$BangumiBody([void Function(BangumiBodyBuilder) updates]) =>
      (new BangumiBodyBuilder()..update(updates)).build();

  _$BangumiBody._({this.hot, this.modules, this.regions}) : super._();

  @override
  BangumiBody rebuild(void Function(BangumiBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BangumiBodyBuilder toBuilder() => new BangumiBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BangumiBody &&
        hot == other.hot &&
        modules == other.modules &&
        regions == other.regions;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, hot.hashCode), modules.hashCode), regions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BangumiBody')
          ..add('hot', hot)
          ..add('modules', modules)
          ..add('regions', regions))
        .toString();
  }
}

class BangumiBodyBuilder implements Builder<BangumiBody, BangumiBodyBuilder> {
  _$BangumiBody _$v;

  BangumiBodyPopularBuilder _hot;
  BangumiBodyPopularBuilder get hot =>
      _$this._hot ??= new BangumiBodyPopularBuilder();
  set hot(BangumiBodyPopularBuilder hot) => _$this._hot = hot;

  ListBuilder<Module> _modules;
  ListBuilder<Module> get modules =>
      _$this._modules ??= new ListBuilder<Module>();
  set modules(ListBuilder<Module> modules) => _$this._modules = modules;

  ListBuilder<Region> _regions;
  ListBuilder<Region> get regions =>
      _$this._regions ??= new ListBuilder<Region>();
  set regions(ListBuilder<Region> regions) => _$this._regions = regions;

  BangumiBodyBuilder();

  BangumiBodyBuilder get _$this {
    if (_$v != null) {
      _hot = _$v.hot?.toBuilder();
      _modules = _$v.modules?.toBuilder();
      _regions = _$v.regions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BangumiBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BangumiBody;
  }

  @override
  void update(void Function(BangumiBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BangumiBody build() {
    _$BangumiBody _$result;
    try {
      _$result = _$v ??
          new _$BangumiBody._(
              hot: _hot?.build(),
              modules: _modules?.build(),
              regions: _regions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'hot';
        _hot?.build();
        _$failedField = 'modules';
        _modules?.build();
        _$failedField = 'regions';
        _regions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BangumiBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
