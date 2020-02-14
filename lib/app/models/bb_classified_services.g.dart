// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_classified_services.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClassifiedServices> _$classifiedServicesSerializer =
    new _$ClassifiedServicesSerializer();

class _$ClassifiedServicesSerializer
    implements StructuredSerializer<ClassifiedServices> {
  @override
  final Iterable<Type> types = const [ClassifiedServices, _$ClassifiedServices];
  @override
  final String wireName = 'ClassifiedServices';

  @override
  Iterable<Object> serialize(Serializers serializers, ClassifiedServices object,
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
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Service)])));
    }
    return result;
  }

  @override
  ClassifiedServices deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClassifiedServicesBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Service)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ClassifiedServices extends ClassifiedServices {
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String url;
  @override
  final int type;
  @override
  final BuiltList<Service> items;

  factory _$ClassifiedServices(
          [void Function(ClassifiedServicesBuilder) updates]) =>
      (new ClassifiedServicesBuilder()..update(updates)).build();

  _$ClassifiedServices._(
      {this.title, this.subtitle, this.url, this.type, this.items})
      : super._();

  @override
  ClassifiedServices rebuild(
          void Function(ClassifiedServicesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassifiedServicesBuilder toBuilder() =>
      new ClassifiedServicesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassifiedServices &&
        title == other.title &&
        subtitle == other.subtitle &&
        url == other.url &&
        type == other.type &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, title.hashCode), subtitle.hashCode), url.hashCode),
            type.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClassifiedServices')
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('url', url)
          ..add('type', type)
          ..add('items', items))
        .toString();
  }
}

class ClassifiedServicesBuilder
    implements Builder<ClassifiedServices, ClassifiedServicesBuilder> {
  _$ClassifiedServices _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _subtitle;
  String get subtitle => _$this._subtitle;
  set subtitle(String subtitle) => _$this._subtitle = subtitle;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  ListBuilder<Service> _items;
  ListBuilder<Service> get items =>
      _$this._items ??= new ListBuilder<Service>();
  set items(ListBuilder<Service> items) => _$this._items = items;

  ClassifiedServicesBuilder();

  ClassifiedServicesBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _subtitle = _$v.subtitle;
      _url = _$v.url;
      _type = _$v.type;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassifiedServices other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClassifiedServices;
  }

  @override
  void update(void Function(ClassifiedServicesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClassifiedServices build() {
    _$ClassifiedServices _$result;
    try {
      _$result = _$v ??
          new _$ClassifiedServices._(
              title: title,
              subtitle: subtitle,
              url: url,
              type: type,
              items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ClassifiedServices', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
