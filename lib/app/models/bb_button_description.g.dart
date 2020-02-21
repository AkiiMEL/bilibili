// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_button_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ButtonDescription> _$buttonDescriptionSerializer =
    new _$ButtonDescriptionSerializer();

class _$ButtonDescriptionSerializer
    implements StructuredSerializer<ButtonDescription> {
  @override
  final Iterable<Type> types = const [ButtonDescription, _$ButtonDescription];
  @override
  final String wireName = 'ButtonDescription';

  @override
  Iterable<Object> serialize(Serializers serializers, ButtonDescription object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(object.uri,
            specifiedType: const FullType(String)));
    }
    if (object.event != null) {
      result
        ..add('event')
        ..add(serializers.serialize(object.event,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.eventV2 != null) {
      result
        ..add('event_v2')
        ..add(serializers.serialize(object.eventV2,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ButtonDescription deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ButtonDescriptionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'event':
          result.event = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'event_v2':
          result.eventV2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ButtonDescription extends ButtonDescription {
  @override
  final String text;
  @override
  final String uri;
  @override
  final String event;
  @override
  final int type;
  @override
  final String eventV2;

  factory _$ButtonDescription(
          [void Function(ButtonDescriptionBuilder) updates]) =>
      (new ButtonDescriptionBuilder()..update(updates)).build();

  _$ButtonDescription._(
      {this.text, this.uri, this.event, this.type, this.eventV2})
      : super._();

  @override
  ButtonDescription rebuild(void Function(ButtonDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ButtonDescriptionBuilder toBuilder() =>
      new ButtonDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ButtonDescription &&
        text == other.text &&
        uri == other.uri &&
        event == other.event &&
        type == other.type &&
        eventV2 == other.eventV2;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, text.hashCode), uri.hashCode), event.hashCode),
            type.hashCode),
        eventV2.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ButtonDescription')
          ..add('text', text)
          ..add('uri', uri)
          ..add('event', event)
          ..add('type', type)
          ..add('eventV2', eventV2))
        .toString();
  }
}

class ButtonDescriptionBuilder
    implements Builder<ButtonDescription, ButtonDescriptionBuilder> {
  _$ButtonDescription _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  String _event;
  String get event => _$this._event;
  set event(String event) => _$this._event = event;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  String _eventV2;
  String get eventV2 => _$this._eventV2;
  set eventV2(String eventV2) => _$this._eventV2 = eventV2;

  ButtonDescriptionBuilder();

  ButtonDescriptionBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _uri = _$v.uri;
      _event = _$v.event;
      _type = _$v.type;
      _eventV2 = _$v.eventV2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ButtonDescription other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ButtonDescription;
  }

  @override
  void update(void Function(ButtonDescriptionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ButtonDescription build() {
    final _$result = _$v ??
        new _$ButtonDescription._(
            text: text, uri: uri, event: event, type: type, eventV2: eventV2);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
