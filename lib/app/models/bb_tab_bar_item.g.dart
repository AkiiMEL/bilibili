// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_tab_bar_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TabBarItem> _$tabBarItemSerializer = new _$TabBarItemSerializer();
Serializer<ExtTabBarItem> _$extTabBarItemSerializer =
    new _$ExtTabBarItemSerializer();

class _$TabBarItemSerializer implements StructuredSerializer<TabBarItem> {
  @override
  final Iterable<Type> types = const [TabBarItem, _$TabBarItem];
  @override
  final String wireName = 'TabBarItem';

  @override
  Iterable<Object> serialize(Serializers serializers, TabBarItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(object.uri,
            specifiedType: const FullType(String)));
    }
    if (object.tabId != null) {
      result
        ..add('tab_id')
        ..add(serializers.serialize(object.tabId,
            specifiedType: const FullType(String)));
    }
    if (object.pos != null) {
      result
        ..add('pos')
        ..add(serializers.serialize(object.pos,
            specifiedType: const FullType(int)));
    }
    if (object.image != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.selectedImage != null) {
      result
        ..add('icon_selected')
        ..add(serializers.serialize(object.selectedImage,
            specifiedType: const FullType(String)));
    }
    if (object.selected != null) {
      result
        ..add('default_selected')
        ..add(serializers.serialize(object.selected,
            specifiedType: const FullType(int)));
    }
    if (object.ext != null) {
      result
        ..add('extension')
        ..add(serializers.serialize(object.ext,
            specifiedType: const FullType(ExtTabBarItem)));
    }
    return result;
  }

  @override
  TabBarItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TabBarItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tab_id':
          result.tabId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pos':
          result.pos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'icon':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon_selected':
          result.selectedImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'default_selected':
          result.selected = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'extension':
          result.ext.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExtTabBarItem)) as ExtTabBarItem);
          break;
      }
    }

    return result.build();
  }
}

class _$ExtTabBarItemSerializer implements StructuredSerializer<ExtTabBarItem> {
  @override
  final Iterable<Type> types = const [ExtTabBarItem, _$ExtTabBarItem];
  @override
  final String wireName = 'ExtTabBarItem';

  @override
  Iterable<Object> serialize(Serializers serializers, ExtTabBarItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.inactiveIcon != null) {
      result
        ..add('inactive_icon')
        ..add(serializers.serialize(object.inactiveIcon,
            specifiedType: const FullType(String)));
    }
    if (object.activeIcon != null) {
      result
        ..add('active_icon')
        ..add(serializers.serialize(object.activeIcon,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ExtTabBarItem deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExtTabBarItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'inactive_icon':
          result.inactiveIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'active_icon':
          result.activeIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TabBarItem extends TabBarItem {
  @override
  final int id;
  @override
  final String name;
  @override
  final String uri;
  @override
  final String tabId;
  @override
  final int pos;
  @override
  final String image;
  @override
  final String selectedImage;
  @override
  final int selected;
  @override
  final ExtTabBarItem ext;

  factory _$TabBarItem([void Function(TabBarItemBuilder) updates]) =>
      (new TabBarItemBuilder()..update(updates)).build();

  _$TabBarItem._(
      {this.id,
      this.name,
      this.uri,
      this.tabId,
      this.pos,
      this.image,
      this.selectedImage,
      this.selected,
      this.ext})
      : super._();

  @override
  TabBarItem rebuild(void Function(TabBarItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TabBarItemBuilder toBuilder() => new TabBarItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabBarItem &&
        id == other.id &&
        name == other.name &&
        uri == other.uri &&
        tabId == other.tabId &&
        pos == other.pos &&
        image == other.image &&
        selectedImage == other.selectedImage &&
        selected == other.selected &&
        ext == other.ext;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), name.hashCode),
                                uri.hashCode),
                            tabId.hashCode),
                        pos.hashCode),
                    image.hashCode),
                selectedImage.hashCode),
            selected.hashCode),
        ext.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TabBarItem')
          ..add('id', id)
          ..add('name', name)
          ..add('uri', uri)
          ..add('tabId', tabId)
          ..add('pos', pos)
          ..add('image', image)
          ..add('selectedImage', selectedImage)
          ..add('selected', selected)
          ..add('ext', ext))
        .toString();
  }
}

class TabBarItemBuilder implements Builder<TabBarItem, TabBarItemBuilder> {
  _$TabBarItem _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  String _tabId;
  String get tabId => _$this._tabId;
  set tabId(String tabId) => _$this._tabId = tabId;

  int _pos;
  int get pos => _$this._pos;
  set pos(int pos) => _$this._pos = pos;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _selectedImage;
  String get selectedImage => _$this._selectedImage;
  set selectedImage(String selectedImage) =>
      _$this._selectedImage = selectedImage;

  int _selected;
  int get selected => _$this._selected;
  set selected(int selected) => _$this._selected = selected;

  ExtTabBarItemBuilder _ext;
  ExtTabBarItemBuilder get ext => _$this._ext ??= new ExtTabBarItemBuilder();
  set ext(ExtTabBarItemBuilder ext) => _$this._ext = ext;

  TabBarItemBuilder();

  TabBarItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _uri = _$v.uri;
      _tabId = _$v.tabId;
      _pos = _$v.pos;
      _image = _$v.image;
      _selectedImage = _$v.selectedImage;
      _selected = _$v.selected;
      _ext = _$v.ext?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabBarItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TabBarItem;
  }

  @override
  void update(void Function(TabBarItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TabBarItem build() {
    _$TabBarItem _$result;
    try {
      _$result = _$v ??
          new _$TabBarItem._(
              id: id,
              name: name,
              uri: uri,
              tabId: tabId,
              pos: pos,
              image: image,
              selectedImage: selectedImage,
              selected: selected,
              ext: _ext?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ext';
        _ext?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TabBarItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ExtTabBarItem extends ExtTabBarItem {
  @override
  final String inactiveIcon;
  @override
  final String activeIcon;

  factory _$ExtTabBarItem([void Function(ExtTabBarItemBuilder) updates]) =>
      (new ExtTabBarItemBuilder()..update(updates)).build();

  _$ExtTabBarItem._({this.inactiveIcon, this.activeIcon}) : super._();

  @override
  ExtTabBarItem rebuild(void Function(ExtTabBarItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtTabBarItemBuilder toBuilder() => new ExtTabBarItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExtTabBarItem &&
        inactiveIcon == other.inactiveIcon &&
        activeIcon == other.activeIcon;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, inactiveIcon.hashCode), activeIcon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExtTabBarItem')
          ..add('inactiveIcon', inactiveIcon)
          ..add('activeIcon', activeIcon))
        .toString();
  }
}

class ExtTabBarItemBuilder
    implements Builder<ExtTabBarItem, ExtTabBarItemBuilder> {
  _$ExtTabBarItem _$v;

  String _inactiveIcon;
  String get inactiveIcon => _$this._inactiveIcon;
  set inactiveIcon(String inactiveIcon) => _$this._inactiveIcon = inactiveIcon;

  String _activeIcon;
  String get activeIcon => _$this._activeIcon;
  set activeIcon(String activeIcon) => _$this._activeIcon = activeIcon;

  ExtTabBarItemBuilder();

  ExtTabBarItemBuilder get _$this {
    if (_$v != null) {
      _inactiveIcon = _$v.inactiveIcon;
      _activeIcon = _$v.activeIcon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExtTabBarItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExtTabBarItem;
  }

  @override
  void update(void Function(ExtTabBarItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExtTabBarItem build() {
    final _$result = _$v ??
        new _$ExtTabBarItem._(
            inactiveIcon: inactiveIcon, activeIcon: activeIcon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
