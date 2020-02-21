// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_featured_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeaturedBody> _$featuredBodySerializer =
    new _$FeaturedBodySerializer();

class _$FeaturedBodySerializer implements StructuredSerializer<FeaturedBody> {
  @override
  final Iterable<Type> types = const [FeaturedBody, _$FeaturedBody];
  @override
  final String wireName = 'FeaturedBody';

  @override
  Iterable<Object> serialize(Serializers serializers, FeaturedBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Media)])));
    }
    if (object.config != null) {
      result
        ..add('config')
        ..add(serializers.serialize(object.config,
            specifiedType: const FullType(Config)));
    }
    return result;
  }

  @override
  FeaturedBody deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeaturedBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Media)]))
              as BuiltList<Object>);
          break;
        case 'config':
          result.config.replace(serializers.deserialize(value,
              specifiedType: const FullType(Config)) as Config);
          break;
      }
    }

    return result.build();
  }
}

class _$FeaturedBody extends FeaturedBody {
  @override
  final BuiltList<Media> items;
  @override
  final Config config;

  factory _$FeaturedBody([void Function(FeaturedBodyBuilder) updates]) =>
      (new FeaturedBodyBuilder()..update(updates)).build();

  _$FeaturedBody._({this.items, this.config}) : super._();

  @override
  FeaturedBody rebuild(void Function(FeaturedBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeaturedBodyBuilder toBuilder() => new FeaturedBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeaturedBody &&
        items == other.items &&
        config == other.config;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, items.hashCode), config.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeaturedBody')
          ..add('items', items)
          ..add('config', config))
        .toString();
  }
}

class FeaturedBodyBuilder
    implements Builder<FeaturedBody, FeaturedBodyBuilder> {
  _$FeaturedBody _$v;

  ListBuilder<Media> _items;
  ListBuilder<Media> get items => _$this._items ??= new ListBuilder<Media>();
  set items(ListBuilder<Media> items) => _$this._items = items;

  ConfigBuilder _config;
  ConfigBuilder get config => _$this._config ??= new ConfigBuilder();
  set config(ConfigBuilder config) => _$this._config = config;

  FeaturedBodyBuilder();

  FeaturedBodyBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _config = _$v.config?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeaturedBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeaturedBody;
  }

  @override
  void update(void Function(FeaturedBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeaturedBody build() {
    _$FeaturedBody _$result;
    try {
      _$result = _$v ??
          new _$FeaturedBody._(
              items: _items?.build(), config: _config?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeaturedBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
