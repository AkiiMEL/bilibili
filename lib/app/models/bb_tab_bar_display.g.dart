// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_tab_bar_display.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TabBarDisplay> _$tabBarDisplaySerializer =
    new _$TabBarDisplaySerializer();

class _$TabBarDisplaySerializer implements StructuredSerializer<TabBarDisplay> {
  @override
  final Iterable<Type> types = const [TabBarDisplay, _$TabBarDisplay];
  @override
  final String wireName = 'TabBarDisplay';

  @override
  Iterable<Object> serialize(Serializers serializers, TabBarDisplay object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.bottom != null) {
      result
        ..add('bottom')
        ..add(serializers.serialize(object.bottom,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TabBarItem)])));
    }
    if (object.tab != null) {
      result
        ..add('tab')
        ..add(serializers.serialize(object.tab,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TabBarItem)])));
    }
    if (object.top != null) {
      result
        ..add('top')
        ..add(serializers.serialize(object.top,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TabBarItem)])));
    }
    return result;
  }

  @override
  TabBarDisplay deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TabBarDisplayBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'bottom':
          result.bottom.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TabBarItem)]))
              as BuiltList<Object>);
          break;
        case 'tab':
          result.tab.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TabBarItem)]))
              as BuiltList<Object>);
          break;
        case 'top':
          result.top.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TabBarItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TabBarDisplay extends TabBarDisplay {
  @override
  final BuiltList<TabBarItem> bottom;
  @override
  final BuiltList<TabBarItem> tab;
  @override
  final BuiltList<TabBarItem> top;

  factory _$TabBarDisplay([void Function(TabBarDisplayBuilder) updates]) =>
      (new TabBarDisplayBuilder()..update(updates)).build();

  _$TabBarDisplay._({this.bottom, this.tab, this.top}) : super._();

  @override
  TabBarDisplay rebuild(void Function(TabBarDisplayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TabBarDisplayBuilder toBuilder() => new TabBarDisplayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabBarDisplay &&
        bottom == other.bottom &&
        tab == other.tab &&
        top == other.top;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, bottom.hashCode), tab.hashCode), top.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TabBarDisplay')
          ..add('bottom', bottom)
          ..add('tab', tab)
          ..add('top', top))
        .toString();
  }
}

class TabBarDisplayBuilder
    implements Builder<TabBarDisplay, TabBarDisplayBuilder> {
  _$TabBarDisplay _$v;

  ListBuilder<TabBarItem> _bottom;
  ListBuilder<TabBarItem> get bottom =>
      _$this._bottom ??= new ListBuilder<TabBarItem>();
  set bottom(ListBuilder<TabBarItem> bottom) => _$this._bottom = bottom;

  ListBuilder<TabBarItem> _tab;
  ListBuilder<TabBarItem> get tab =>
      _$this._tab ??= new ListBuilder<TabBarItem>();
  set tab(ListBuilder<TabBarItem> tab) => _$this._tab = tab;

  ListBuilder<TabBarItem> _top;
  ListBuilder<TabBarItem> get top =>
      _$this._top ??= new ListBuilder<TabBarItem>();
  set top(ListBuilder<TabBarItem> top) => _$this._top = top;

  TabBarDisplayBuilder();

  TabBarDisplayBuilder get _$this {
    if (_$v != null) {
      _bottom = _$v.bottom?.toBuilder();
      _tab = _$v.tab?.toBuilder();
      _top = _$v.top?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabBarDisplay other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TabBarDisplay;
  }

  @override
  void update(void Function(TabBarDisplayBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TabBarDisplay build() {
    _$TabBarDisplay _$result;
    try {
      _$result = _$v ??
          new _$TabBarDisplay._(
              bottom: _bottom?.build(), tab: _tab?.build(), top: _top?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'bottom';
        _bottom?.build();
        _$failedField = 'tab';
        _tab?.build();
        _$failedField = 'top';
        _top?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TabBarDisplay', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
