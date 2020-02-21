// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_live_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LiveGroup<Object>> _$liveGroupSerializer =
    new _$LiveGroupSerializer();

class _$LiveGroupSerializer implements StructuredSerializer<LiveGroup<Object>> {
  @override
  final Iterable<Type> types = const [LiveGroup, _$LiveGroup];
  @override
  final String wireName = 'LiveGroup';

  @override
  Iterable<Object> serialize(Serializers serializers, LiveGroup<Object> object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterElement =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[];
    if (object.module != null) {
      result
        ..add('module_info')
        ..add(serializers.serialize(object.module,
            specifiedType: const FullType(LiveModule)));
    }
    if (object.extra != null) {
      result
        ..add('extra_info')
        ..add(serializers.serialize(object.extra,
            specifiedType: const FullType(LiveExtra)));
    }
    if (object.list != null) {
      result
        ..add('list')
        ..add(serializers.serialize(object.list,
            specifiedType: new FullType(BuiltList, [parameterElement])));
    }
    return result;
  }

  @override
  LiveGroup<Object> deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterElement =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new LiveGroupBuilder<Object>()
        : serializers.newBuilder(specifiedType) as LiveGroupBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'module_info':
          result.module.replace(serializers.deserialize(value,
              specifiedType: const FullType(LiveModule)) as LiveModule);
          break;
        case 'extra_info':
          result.extra.replace(serializers.deserialize(value,
              specifiedType: const FullType(LiveExtra)) as LiveExtra);
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: new FullType(BuiltList, [parameterElement]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$LiveGroup<Element> extends LiveGroup<Element> {
  @override
  final LiveModule module;
  @override
  final LiveExtra extra;
  @override
  final BuiltList<Element> list;

  factory _$LiveGroup([void Function(LiveGroupBuilder<Element>) updates]) =>
      (new LiveGroupBuilder<Element>()..update(updates)).build();

  _$LiveGroup._({this.module, this.extra, this.list}) : super._() {
    if (Element == dynamic) {
      throw new BuiltValueMissingGenericsError('LiveGroup', 'Element');
    }
  }

  @override
  LiveGroup<Element> rebuild(
          void Function(LiveGroupBuilder<Element>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveGroupBuilder<Element> toBuilder() =>
      new LiveGroupBuilder<Element>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveGroup &&
        module == other.module &&
        extra == other.extra &&
        list == other.list;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, module.hashCode), extra.hashCode), list.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LiveGroup')
          ..add('module', module)
          ..add('extra', extra)
          ..add('list', list))
        .toString();
  }
}

class LiveGroupBuilder<Element>
    implements Builder<LiveGroup<Element>, LiveGroupBuilder<Element>> {
  _$LiveGroup<Element> _$v;

  LiveModuleBuilder _module;
  LiveModuleBuilder get module => _$this._module ??= new LiveModuleBuilder();
  set module(LiveModuleBuilder module) => _$this._module = module;

  LiveExtraBuilder _extra;
  LiveExtraBuilder get extra => _$this._extra ??= new LiveExtraBuilder();
  set extra(LiveExtraBuilder extra) => _$this._extra = extra;

  ListBuilder<Element> _list;
  ListBuilder<Element> get list => _$this._list ??= new ListBuilder<Element>();
  set list(ListBuilder<Element> list) => _$this._list = list;

  LiveGroupBuilder();

  LiveGroupBuilder<Element> get _$this {
    if (_$v != null) {
      _module = _$v.module?.toBuilder();
      _extra = _$v.extra?.toBuilder();
      _list = _$v.list?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveGroup<Element> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LiveGroup<Element>;
  }

  @override
  void update(void Function(LiveGroupBuilder<Element>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LiveGroup<Element> build() {
    _$LiveGroup<Element> _$result;
    try {
      _$result = _$v ??
          new _$LiveGroup<Element>._(
              module: _module?.build(),
              extra: _extra?.build(),
              list: _list?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'module';
        _module?.build();
        _$failedField = 'extra';
        _extra?.build();
        _$failedField = 'list';
        _list?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LiveGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
