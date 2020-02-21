// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_channel_module.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChannelModule extends ChannelModule {
  @override
  final String offset;
  @override
  final BuiltList<Channel> items;
  @override
  final ChannelGroup item;
  @override
  final String type;
  @override
  final String title;
  @override
  final String label;
  @override
  final int hasMore;
  @override
  final ButtonDescription descButton;

  factory _$ChannelModule([void Function(ChannelModuleBuilder) updates]) =>
      (new ChannelModuleBuilder()..update(updates)).build();

  _$ChannelModule._(
      {this.offset,
      this.items,
      this.item,
      this.type,
      this.title,
      this.label,
      this.hasMore,
      this.descButton})
      : super._();

  @override
  ChannelModule rebuild(void Function(ChannelModuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChannelModuleBuilder toBuilder() => new ChannelModuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelModule &&
        offset == other.offset &&
        items == other.items &&
        item == other.item &&
        type == other.type &&
        title == other.title &&
        label == other.label &&
        hasMore == other.hasMore &&
        descButton == other.descButton;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, offset.hashCode), items.hashCode),
                            item.hashCode),
                        type.hashCode),
                    title.hashCode),
                label.hashCode),
            hasMore.hashCode),
        descButton.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChannelModule')
          ..add('offset', offset)
          ..add('items', items)
          ..add('item', item)
          ..add('type', type)
          ..add('title', title)
          ..add('label', label)
          ..add('hasMore', hasMore)
          ..add('descButton', descButton))
        .toString();
  }
}

class ChannelModuleBuilder
    implements Builder<ChannelModule, ChannelModuleBuilder> {
  _$ChannelModule _$v;

  String _offset;
  String get offset => _$this._offset;
  set offset(String offset) => _$this._offset = offset;

  ListBuilder<Channel> _items;
  ListBuilder<Channel> get items =>
      _$this._items ??= new ListBuilder<Channel>();
  set items(ListBuilder<Channel> items) => _$this._items = items;

  ChannelGroupBuilder _item;
  ChannelGroupBuilder get item => _$this._item ??= new ChannelGroupBuilder();
  set item(ChannelGroupBuilder item) => _$this._item = item;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  int _hasMore;
  int get hasMore => _$this._hasMore;
  set hasMore(int hasMore) => _$this._hasMore = hasMore;

  ButtonDescriptionBuilder _descButton;
  ButtonDescriptionBuilder get descButton =>
      _$this._descButton ??= new ButtonDescriptionBuilder();
  set descButton(ButtonDescriptionBuilder descButton) =>
      _$this._descButton = descButton;

  ChannelModuleBuilder();

  ChannelModuleBuilder get _$this {
    if (_$v != null) {
      _offset = _$v.offset;
      _items = _$v.items?.toBuilder();
      _item = _$v.item?.toBuilder();
      _type = _$v.type;
      _title = _$v.title;
      _label = _$v.label;
      _hasMore = _$v.hasMore;
      _descButton = _$v.descButton?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelModule other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChannelModule;
  }

  @override
  void update(void Function(ChannelModuleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChannelModule build() {
    _$ChannelModule _$result;
    try {
      _$result = _$v ??
          new _$ChannelModule._(
              offset: offset,
              items: _items?.build(),
              item: _item?.build(),
              type: type,
              title: title,
              label: label,
              hasMore: hasMore,
              descButton: _descButton?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
        _$failedField = 'item';
        _item?.build();

        _$failedField = 'descButton';
        _descButton?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ChannelModule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
