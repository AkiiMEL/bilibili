// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_secondary_panel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SecondaryPanel> _$secondaryPanelSerializer =
    new _$SecondaryPanelSerializer();

class _$SecondaryPanelSerializer
    implements StructuredSerializer<SecondaryPanel> {
  @override
  final Iterable<Type> types = const [SecondaryPanel, _$SecondaryPanel];
  @override
  final String wireName = 'SecondaryPanel';

  @override
  Iterable<Object> serialize(Serializers serializers, SecondaryPanel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.reasonId != null) {
      result
        ..add('reason_id')
        ..add(serializers.serialize(object.reasonId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  SecondaryPanel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SecondaryPanelBuilder();

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
        case 'reason_id':
          result.reasonId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SecondaryPanel extends SecondaryPanel {
  @override
  final String text;
  @override
  final int reasonId;

  factory _$SecondaryPanel([void Function(SecondaryPanelBuilder) updates]) =>
      (new SecondaryPanelBuilder()..update(updates)).build();

  _$SecondaryPanel._({this.text, this.reasonId}) : super._();

  @override
  SecondaryPanel rebuild(void Function(SecondaryPanelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecondaryPanelBuilder toBuilder() =>
      new SecondaryPanelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecondaryPanel &&
        text == other.text &&
        reasonId == other.reasonId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, text.hashCode), reasonId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SecondaryPanel')
          ..add('text', text)
          ..add('reasonId', reasonId))
        .toString();
  }
}

class SecondaryPanelBuilder
    implements Builder<SecondaryPanel, SecondaryPanelBuilder> {
  _$SecondaryPanel _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  int _reasonId;
  int get reasonId => _$this._reasonId;
  set reasonId(int reasonId) => _$this._reasonId = reasonId;

  SecondaryPanelBuilder();

  SecondaryPanelBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _reasonId = _$v.reasonId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecondaryPanel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SecondaryPanel;
  }

  @override
  void update(void Function(SecondaryPanelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SecondaryPanel build() {
    final _$result =
        _$v ?? new _$SecondaryPanel._(text: text, reasonId: reasonId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
