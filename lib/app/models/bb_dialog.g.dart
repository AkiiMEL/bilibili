// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_dialog.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Dialog> _$dialogSerializer = new _$DialogSerializer();
Serializer<DialogButtonDescription> _$dialogButtonDescriptionSerializer =
    new _$DialogButtonDescriptionSerializer();

class _$DialogSerializer implements StructuredSerializer<Dialog> {
  @override
  final Iterable<Type> types = const [Dialog, _$Dialog];
  @override
  final String wireName = 'Dialog';

  @override
  Iterable<Object> serialize(Serializers serializers, Dialog object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.btnRight != null) {
      result
        ..add('btn_right')
        ..add(serializers.serialize(object.btnRight,
            specifiedType: const FullType(DialogButtonDescription)));
    }
    if (object.desc != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(object.desc,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Dialog deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DialogBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'btn_right':
          result.btnRight.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DialogButtonDescription))
              as DialogButtonDescription);
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DialogButtonDescriptionSerializer
    implements StructuredSerializer<DialogButtonDescription> {
  @override
  final Iterable<Type> types = const [
    DialogButtonDescription,
    _$DialogButtonDescription
  ];
  @override
  final String wireName = 'DialogButtonDescription';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DialogButtonDescription object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DialogButtonDescription deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DialogButtonDescriptionBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Dialog extends Dialog {
  @override
  final DialogButtonDescription btnRight;
  @override
  final String desc;
  @override
  final String title;

  factory _$Dialog([void Function(DialogBuilder) updates]) =>
      (new DialogBuilder()..update(updates)).build();

  _$Dialog._({this.btnRight, this.desc, this.title}) : super._();

  @override
  Dialog rebuild(void Function(DialogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DialogBuilder toBuilder() => new DialogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dialog &&
        btnRight == other.btnRight &&
        desc == other.desc &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, btnRight.hashCode), desc.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Dialog')
          ..add('btnRight', btnRight)
          ..add('desc', desc)
          ..add('title', title))
        .toString();
  }
}

class DialogBuilder implements Builder<Dialog, DialogBuilder> {
  _$Dialog _$v;

  DialogButtonDescriptionBuilder _btnRight;
  DialogButtonDescriptionBuilder get btnRight =>
      _$this._btnRight ??= new DialogButtonDescriptionBuilder();
  set btnRight(DialogButtonDescriptionBuilder btnRight) =>
      _$this._btnRight = btnRight;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  DialogBuilder();

  DialogBuilder get _$this {
    if (_$v != null) {
      _btnRight = _$v.btnRight?.toBuilder();
      _desc = _$v.desc;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dialog other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Dialog;
  }

  @override
  void update(void Function(DialogBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Dialog build() {
    _$Dialog _$result;
    try {
      _$result = _$v ??
          new _$Dialog._(
              btnRight: _btnRight?.build(), desc: desc, title: title);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'btnRight';
        _btnRight?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Dialog', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DialogButtonDescription extends DialogButtonDescription {
  @override
  final String title;
  @override
  final String type;

  factory _$DialogButtonDescription(
          [void Function(DialogButtonDescriptionBuilder) updates]) =>
      (new DialogButtonDescriptionBuilder()..update(updates)).build();

  _$DialogButtonDescription._({this.title, this.type}) : super._();

  @override
  DialogButtonDescription rebuild(
          void Function(DialogButtonDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DialogButtonDescriptionBuilder toBuilder() =>
      new DialogButtonDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DialogButtonDescription &&
        title == other.title &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DialogButtonDescription')
          ..add('title', title)
          ..add('type', type))
        .toString();
  }
}

class DialogButtonDescriptionBuilder
    implements
        Builder<DialogButtonDescription, DialogButtonDescriptionBuilder> {
  _$DialogButtonDescription _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  DialogButtonDescriptionBuilder();

  DialogButtonDescriptionBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DialogButtonDescription other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DialogButtonDescription;
  }

  @override
  void update(void Function(DialogButtonDescriptionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DialogButtonDescription build() {
    final _$result =
        _$v ?? new _$DialogButtonDescription._(title: title, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
