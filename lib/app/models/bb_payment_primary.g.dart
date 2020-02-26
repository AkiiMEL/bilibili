// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_payment_primary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentPrimary> _$paymentPrimarySerializer =
    new _$PaymentPrimarySerializer();

class _$PaymentPrimarySerializer
    implements StructuredSerializer<PaymentPrimary> {
  @override
  final Iterable<Type> types = const [PaymentPrimary, _$PaymentPrimary];
  @override
  final String wireName = 'PaymentPrimary';

  @override
  Iterable<Object> serialize(Serializers serializers, PaymentPrimary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.icon != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.icon,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PaymentPrimary deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentPrimaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentPrimary extends PaymentPrimary {
  @override
  final String icon;
  @override
  final String title;
  @override
  final int type;
  @override
  final String url;

  factory _$PaymentPrimary([void Function(PaymentPrimaryBuilder) updates]) =>
      (new PaymentPrimaryBuilder()..update(updates)).build();

  _$PaymentPrimary._({this.icon, this.title, this.type, this.url}) : super._();

  @override
  PaymentPrimary rebuild(void Function(PaymentPrimaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentPrimaryBuilder toBuilder() =>
      new PaymentPrimaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentPrimary &&
        icon == other.icon &&
        title == other.title &&
        type == other.type &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, icon.hashCode), title.hashCode), type.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaymentPrimary')
          ..add('icon', icon)
          ..add('title', title)
          ..add('type', type)
          ..add('url', url))
        .toString();
  }
}

class PaymentPrimaryBuilder
    implements Builder<PaymentPrimary, PaymentPrimaryBuilder> {
  _$PaymentPrimary _$v;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  PaymentPrimaryBuilder();

  PaymentPrimaryBuilder get _$this {
    if (_$v != null) {
      _icon = _$v.icon;
      _title = _$v.title;
      _type = _$v.type;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentPrimary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PaymentPrimary;
  }

  @override
  void update(void Function(PaymentPrimaryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaymentPrimary build() {
    final _$result = _$v ??
        new _$PaymentPrimary._(icon: icon, title: title, type: type, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
