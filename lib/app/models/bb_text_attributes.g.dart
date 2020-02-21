// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_text_attributes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TextAttributes> _$textAttributesSerializer =
    new _$TextAttributesSerializer();

class _$TextAttributesSerializer
    implements StructuredSerializer<TextAttributes> {
  @override
  final Iterable<Type> types = const [TextAttributes, _$TextAttributes];
  @override
  final String wireName = 'TextAttributes';

  @override
  Iterable<Object> serialize(Serializers serializers, TextAttributes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.darkModeTextColor != null) {
      result
        ..add('text_color_night')
        ..add(serializers.serialize(object.darkModeTextColor,
            specifiedType: const FullType(String)));
    }
    if (object.backgroundColor != null) {
      result
        ..add('bg_color')
        ..add(serializers.serialize(object.backgroundColor,
            specifiedType: const FullType(String)));
    }
    if (object.darkModeBackgroundColor != null) {
      result
        ..add('bg_color_night')
        ..add(serializers.serialize(object.darkModeBackgroundColor,
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
        ..add('border_color')
        ..add(serializers.serialize(object.borderColor,
            specifiedType: const FullType(String)));
    }
    if (object.darkModeBorderColor != null) {
      result
        ..add('border_color_night')
        ..add(serializers.serialize(object.darkModeBorderColor,
            specifiedType: const FullType(String)));
    }
    if (object.bgStyle != null) {
      result
        ..add('bg_style')
        ..add(serializers.serialize(object.bgStyle,
            specifiedType: const FullType(int)));
    }
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TextAttributes deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TextAttributesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text_color_night':
          result.darkModeTextColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bg_color':
          result.backgroundColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bg_color_night':
          result.darkModeBackgroundColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text_color':
          result.textColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'border_color':
          result.borderColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'border_color_night':
          result.darkModeBorderColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bg_style':
          result.bgStyle = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TextAttributes extends TextAttributes {
  @override
  final String darkModeTextColor;
  @override
  final String backgroundColor;
  @override
  final String darkModeBackgroundColor;
  @override
  final String textColor;
  @override
  final String borderColor;
  @override
  final String darkModeBorderColor;
  @override
  final int bgStyle;
  @override
  final String text;

  factory _$TextAttributes([void Function(TextAttributesBuilder) updates]) =>
      (new TextAttributesBuilder()..update(updates)).build();

  _$TextAttributes._(
      {this.darkModeTextColor,
      this.backgroundColor,
      this.darkModeBackgroundColor,
      this.textColor,
      this.borderColor,
      this.darkModeBorderColor,
      this.bgStyle,
      this.text})
      : super._();

  @override
  TextAttributes rebuild(void Function(TextAttributesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TextAttributesBuilder toBuilder() =>
      new TextAttributesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TextAttributes &&
        darkModeTextColor == other.darkModeTextColor &&
        backgroundColor == other.backgroundColor &&
        darkModeBackgroundColor == other.darkModeBackgroundColor &&
        textColor == other.textColor &&
        borderColor == other.borderColor &&
        darkModeBorderColor == other.darkModeBorderColor &&
        bgStyle == other.bgStyle &&
        text == other.text;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, darkModeTextColor.hashCode),
                                backgroundColor.hashCode),
                            darkModeBackgroundColor.hashCode),
                        textColor.hashCode),
                    borderColor.hashCode),
                darkModeBorderColor.hashCode),
            bgStyle.hashCode),
        text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TextAttributes')
          ..add('darkModeTextColor', darkModeTextColor)
          ..add('backgroundColor', backgroundColor)
          ..add('darkModeBackgroundColor', darkModeBackgroundColor)
          ..add('textColor', textColor)
          ..add('borderColor', borderColor)
          ..add('darkModeBorderColor', darkModeBorderColor)
          ..add('bgStyle', bgStyle)
          ..add('text', text))
        .toString();
  }
}

class TextAttributesBuilder
    implements Builder<TextAttributes, TextAttributesBuilder> {
  _$TextAttributes _$v;

  String _darkModeTextColor;
  String get darkModeTextColor => _$this._darkModeTextColor;
  set darkModeTextColor(String darkModeTextColor) =>
      _$this._darkModeTextColor = darkModeTextColor;

  String _backgroundColor;
  String get backgroundColor => _$this._backgroundColor;
  set backgroundColor(String backgroundColor) =>
      _$this._backgroundColor = backgroundColor;

  String _darkModeBackgroundColor;
  String get darkModeBackgroundColor => _$this._darkModeBackgroundColor;
  set darkModeBackgroundColor(String darkModeBackgroundColor) =>
      _$this._darkModeBackgroundColor = darkModeBackgroundColor;

  String _textColor;
  String get textColor => _$this._textColor;
  set textColor(String textColor) => _$this._textColor = textColor;

  String _borderColor;
  String get borderColor => _$this._borderColor;
  set borderColor(String borderColor) => _$this._borderColor = borderColor;

  String _darkModeBorderColor;
  String get darkModeBorderColor => _$this._darkModeBorderColor;
  set darkModeBorderColor(String darkModeBorderColor) =>
      _$this._darkModeBorderColor = darkModeBorderColor;

  int _bgStyle;
  int get bgStyle => _$this._bgStyle;
  set bgStyle(int bgStyle) => _$this._bgStyle = bgStyle;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  TextAttributesBuilder();

  TextAttributesBuilder get _$this {
    if (_$v != null) {
      _darkModeTextColor = _$v.darkModeTextColor;
      _backgroundColor = _$v.backgroundColor;
      _darkModeBackgroundColor = _$v.darkModeBackgroundColor;
      _textColor = _$v.textColor;
      _borderColor = _$v.borderColor;
      _darkModeBorderColor = _$v.darkModeBorderColor;
      _bgStyle = _$v.bgStyle;
      _text = _$v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TextAttributes other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TextAttributes;
  }

  @override
  void update(void Function(TextAttributesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TextAttributes build() {
    final _$result = _$v ??
        new _$TextAttributes._(
            darkModeTextColor: darkModeTextColor,
            backgroundColor: backgroundColor,
            darkModeBackgroundColor: darkModeBackgroundColor,
            textColor: textColor,
            borderColor: borderColor,
            darkModeBorderColor: darkModeBorderColor,
            bgStyle: bgStyle,
            text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
