// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_feedback_panel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedbackPanel> _$feedbackPanelSerializer =
    new _$FeedbackPanelSerializer();

class _$FeedbackPanelSerializer implements StructuredSerializer<FeedbackPanel> {
  @override
  final Iterable<Type> types = const [FeedbackPanel, _$FeedbackPanel];
  @override
  final String wireName = 'FeedbackPanel';

  @override
  Iterable<Object> serialize(Serializers serializers, FeedbackPanel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'feedback_pannel_detail',
      serializers.serialize(object.feedbackPanelDetail,
          specifiedType: const FullType(
              BuiltList, const [const FullType(FeedbackPanelDetail)])),
    ];
    if (object.panelTypeText != null) {
      result
        ..add('pannel_type_text')
        ..add(serializers.serialize(object.panelTypeText,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FeedbackPanel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbackPanelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'pannel_type_text':
          result.panelTypeText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'feedback_pannel_detail':
          result.feedbackPanelDetail.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FeedbackPanelDetail)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$FeedbackPanel extends FeedbackPanel {
  @override
  final String panelTypeText;
  @override
  final BuiltList<FeedbackPanelDetail> feedbackPanelDetail;

  factory _$FeedbackPanel([void Function(FeedbackPanelBuilder) updates]) =>
      (new FeedbackPanelBuilder()..update(updates)).build();

  _$FeedbackPanel._({this.panelTypeText, this.feedbackPanelDetail})
      : super._() {
    if (feedbackPanelDetail == null) {
      throw new BuiltValueNullFieldError(
          'FeedbackPanel', 'feedbackPanelDetail');
    }
  }

  @override
  FeedbackPanel rebuild(void Function(FeedbackPanelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackPanelBuilder toBuilder() => new FeedbackPanelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackPanel &&
        panelTypeText == other.panelTypeText &&
        feedbackPanelDetail == other.feedbackPanelDetail;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, panelTypeText.hashCode), feedbackPanelDetail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedbackPanel')
          ..add('panelTypeText', panelTypeText)
          ..add('feedbackPanelDetail', feedbackPanelDetail))
        .toString();
  }
}

class FeedbackPanelBuilder
    implements Builder<FeedbackPanel, FeedbackPanelBuilder> {
  _$FeedbackPanel _$v;

  String _panelTypeText;
  String get panelTypeText => _$this._panelTypeText;
  set panelTypeText(String panelTypeText) =>
      _$this._panelTypeText = panelTypeText;

  ListBuilder<FeedbackPanelDetail> _feedbackPanelDetail;
  ListBuilder<FeedbackPanelDetail> get feedbackPanelDetail =>
      _$this._feedbackPanelDetail ??= new ListBuilder<FeedbackPanelDetail>();
  set feedbackPanelDetail(
          ListBuilder<FeedbackPanelDetail> feedbackPanelDetail) =>
      _$this._feedbackPanelDetail = feedbackPanelDetail;

  FeedbackPanelBuilder();

  FeedbackPanelBuilder get _$this {
    if (_$v != null) {
      _panelTypeText = _$v.panelTypeText;
      _feedbackPanelDetail = _$v.feedbackPanelDetail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbackPanel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedbackPanel;
  }

  @override
  void update(void Function(FeedbackPanelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedbackPanel build() {
    _$FeedbackPanel _$result;
    try {
      _$result = _$v ??
          new _$FeedbackPanel._(
              panelTypeText: panelTypeText,
              feedbackPanelDetail: feedbackPanelDetail.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'feedbackPanelDetail';
        feedbackPanelDetail.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeedbackPanel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
