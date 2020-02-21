// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_feedback_panel_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedbackPanelDetail> _$feedbackPanelDetailSerializer =
    new _$FeedbackPanelDetailSerializer();

class _$FeedbackPanelDetailSerializer
    implements StructuredSerializer<FeedbackPanelDetail> {
  @override
  final Iterable<Type> types = const [
    FeedbackPanelDetail,
    _$FeedbackPanelDetail
  ];
  @override
  final String wireName = 'FeedbackPanelDetail';

  @override
  Iterable<Object> serialize(
      Serializers serializers, FeedbackPanelDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.moduleId != null) {
      result
        ..add('module_id')
        ..add(serializers.serialize(object.moduleId,
            specifiedType: const FullType(int)));
    }
    if (object.jumpType != null) {
      result
        ..add('jump_type')
        ..add(serializers.serialize(object.jumpType,
            specifiedType: const FullType(int)));
    }
    if (object.iconUrl != null) {
      result
        ..add('icon_url')
        ..add(serializers.serialize(object.iconUrl,
            specifiedType: const FullType(String)));
    }
    if (object.jumpUrl != null) {
      result
        ..add('jump_url')
        ..add(serializers.serialize(object.jumpUrl,
            specifiedType: const FullType(String)));
    }
    if (object.secondaryPanel != null) {
      result
        ..add('secondary_panel')
        ..add(serializers.serialize(object.secondaryPanel,
            specifiedType:
                const FullType(List, const [const FullType(SecondaryPanel)])));
    }
    return result;
  }

  @override
  FeedbackPanelDetail deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbackPanelDetailBuilder();

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
        case 'module_id':
          result.moduleId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'jump_type':
          result.jumpType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'icon_url':
          result.iconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jump_url':
          result.jumpUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'secondary_panel':
          result.secondaryPanel = serializers.deserialize(value,
                  specifiedType: const FullType(
                      List, const [const FullType(SecondaryPanel)]))
              as List<SecondaryPanel>;
          break;
      }
    }

    return result.build();
  }
}

class _$FeedbackPanelDetail extends FeedbackPanelDetail {
  @override
  final String text;
  @override
  final int moduleId;
  @override
  final int jumpType;
  @override
  final String iconUrl;
  @override
  final String jumpUrl;
  @override
  final List<SecondaryPanel> secondaryPanel;

  factory _$FeedbackPanelDetail(
          [void Function(FeedbackPanelDetailBuilder) updates]) =>
      (new FeedbackPanelDetailBuilder()..update(updates)).build();

  _$FeedbackPanelDetail._(
      {this.text,
      this.moduleId,
      this.jumpType,
      this.iconUrl,
      this.jumpUrl,
      this.secondaryPanel})
      : super._();

  @override
  FeedbackPanelDetail rebuild(
          void Function(FeedbackPanelDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackPanelDetailBuilder toBuilder() =>
      new FeedbackPanelDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackPanelDetail &&
        text == other.text &&
        moduleId == other.moduleId &&
        jumpType == other.jumpType &&
        iconUrl == other.iconUrl &&
        jumpUrl == other.jumpUrl &&
        secondaryPanel == other.secondaryPanel;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, text.hashCode), moduleId.hashCode),
                    jumpType.hashCode),
                iconUrl.hashCode),
            jumpUrl.hashCode),
        secondaryPanel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedbackPanelDetail')
          ..add('text', text)
          ..add('moduleId', moduleId)
          ..add('jumpType', jumpType)
          ..add('iconUrl', iconUrl)
          ..add('jumpUrl', jumpUrl)
          ..add('secondaryPanel', secondaryPanel))
        .toString();
  }
}

class FeedbackPanelDetailBuilder
    implements Builder<FeedbackPanelDetail, FeedbackPanelDetailBuilder> {
  _$FeedbackPanelDetail _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  int _moduleId;
  int get moduleId => _$this._moduleId;
  set moduleId(int moduleId) => _$this._moduleId = moduleId;

  int _jumpType;
  int get jumpType => _$this._jumpType;
  set jumpType(int jumpType) => _$this._jumpType = jumpType;

  String _iconUrl;
  String get iconUrl => _$this._iconUrl;
  set iconUrl(String iconUrl) => _$this._iconUrl = iconUrl;

  String _jumpUrl;
  String get jumpUrl => _$this._jumpUrl;
  set jumpUrl(String jumpUrl) => _$this._jumpUrl = jumpUrl;

  List<SecondaryPanel> _secondaryPanel;
  List<SecondaryPanel> get secondaryPanel => _$this._secondaryPanel;
  set secondaryPanel(List<SecondaryPanel> secondaryPanel) =>
      _$this._secondaryPanel = secondaryPanel;

  FeedbackPanelDetailBuilder();

  FeedbackPanelDetailBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _moduleId = _$v.moduleId;
      _jumpType = _$v.jumpType;
      _iconUrl = _$v.iconUrl;
      _jumpUrl = _$v.jumpUrl;
      _secondaryPanel = _$v.secondaryPanel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbackPanelDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedbackPanelDetail;
  }

  @override
  void update(void Function(FeedbackPanelDetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedbackPanelDetail build() {
    final _$result = _$v ??
        new _$FeedbackPanelDetail._(
            text: text,
            moduleId: moduleId,
            jumpType: jumpType,
            iconUrl: iconUrl,
            jumpUrl: jumpUrl,
            secondaryPanel: secondaryPanel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
