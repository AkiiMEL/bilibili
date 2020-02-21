// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_ad_tag_style.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AdTagStyle> _$adTagStyleSerializer = new _$AdTagStyleSerializer();

class _$AdTagStyleSerializer implements StructuredSerializer<AdTagStyle> {
  @override
  final Iterable<Type> types = const [AdTagStyle, _$AdTagStyle];
  @override
  final String wireName = 'AdTagStyle';

  @override
  Iterable<Object> serialize(Serializers serializers, AdTagStyle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.textColor != null) {
      result
        ..add('text_color')
        ..add(serializers.serialize(object.textColor,
            specifiedType: const FullType(String)));
    }
    if (object.borderColor != null) {
      result
        ..add('bg_border_color')
        ..add(serializers.serialize(object.borderColor,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AdTagStyle deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdTagStyleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text_color':
          result.textColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bg_border_color':
          result.borderColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AdTagStyle extends AdTagStyle {
  @override
  final int type;
  @override
  final String text;
  @override
  final String textColor;
  @override
  final String borderColor;

  factory _$AdTagStyle([void Function(AdTagStyleBuilder) updates]) =>
      (new AdTagStyleBuilder()..update(updates)).build();

  _$AdTagStyle._({this.type, this.text, this.textColor, this.borderColor})
      : super._();

  @override
  AdTagStyle rebuild(void Function(AdTagStyleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdTagStyleBuilder toBuilder() => new AdTagStyleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdTagStyle &&
        type == other.type &&
        text == other.text &&
        textColor == other.textColor &&
        borderColor == other.borderColor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, type.hashCode), text.hashCode), textColor.hashCode),
        borderColor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AdTagStyle')
          ..add('type', type)
          ..add('text', text)
          ..add('textColor', textColor)
          ..add('borderColor', borderColor))
        .toString();
  }
}

class AdTagStyleBuilder implements Builder<AdTagStyle, AdTagStyleBuilder> {
  _$AdTagStyle _$v;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _textColor;
  String get textColor => _$this._textColor;
  set textColor(String textColor) => _$this._textColor = textColor;

  String _borderColor;
  String get borderColor => _$this._borderColor;
  set borderColor(String borderColor) => _$this._borderColor = borderColor;

  AdTagStyleBuilder();

  AdTagStyleBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _text = _$v.text;
      _textColor = _$v.textColor;
      _borderColor = _$v.borderColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdTagStyle other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AdTagStyle;
  }

  @override
  void update(void Function(AdTagStyleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AdTagStyle build() {
    final _$result = _$v ??
        new _$AdTagStyle._(
            type: type,
            text: text,
            textColor: textColor,
            borderColor: borderColor);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
