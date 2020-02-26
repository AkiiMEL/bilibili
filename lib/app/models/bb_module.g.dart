// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_module.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Module<Object>> _$moduleSerializer = new _$ModuleSerializer();

class _$ModuleSerializer implements StructuredSerializer<Module<Object>> {
  @override
  final Iterable<Type> types = const [Module, _$Module];
  @override
  final String wireName = 'Module';

  @override
  Iterable<Object> serialize(Serializers serializers, Module<Object> object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterElement =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[];
    if (object.attr != null) {
      result
        ..add('attr')
        ..add(serializers.serialize(object.attr,
            specifiedType: const FullType(Attr)));
    }
    if (object.headers != null) {
      result
        ..add('headers')
        ..add(serializers.serialize(object.headers,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Region)])));
    }
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType: new FullType(BuiltList, [parameterElement])));
    }
    if (object.moduleId != null) {
      result
        ..add('module_id')
        ..add(serializers.serialize(object.moduleId,
            specifiedType: const FullType(int)));
    }
    if (object.report != null) {
      result
        ..add('report')
        ..add(serializers.serialize(object.report,
            specifiedType: const FullType(Report)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.style != null) {
      result
        ..add('style')
        ..add(serializers.serialize(object.style,
            specifiedType: const FullType(ModuleStyle)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.subtitle != null) {
      result
        ..add('subtitle')
        ..add(serializers.serialize(object.subtitle,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.wid != null) {
      result
        ..add('wid')
        ..add(serializers.serialize(object.wid,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.follow != null) {
      result
        ..add('follow')
        ..add(serializers.serialize(object.follow,
            specifiedType: const FullType(ModuleFollow)));
    }
    return result;
  }

  @override
  Module<Object> deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterElement =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new ModuleBuilder<Object>()
        : serializers.newBuilder(specifiedType) as ModuleBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'attr':
          result.attr.replace(serializers.deserialize(value,
              specifiedType: const FullType(Attr)) as Attr);
          break;
        case 'headers':
          result.headers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Region)]))
              as BuiltList<Object>);
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: new FullType(BuiltList, [parameterElement]))
              as BuiltList<Object>);
          break;
        case 'module_id':
          result.moduleId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'report':
          result.report.replace(serializers.deserialize(value,
              specifiedType: const FullType(Report)) as Report);
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'style':
          result.style = serializers.deserialize(value,
              specifiedType: const FullType(ModuleStyle)) as ModuleStyle;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subtitle':
          result.subtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wid':
          result.wid.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'follow':
          result.follow.replace(serializers.deserialize(value,
              specifiedType: const FullType(ModuleFollow)) as ModuleFollow);
          break;
      }
    }

    return result.build();
  }
}

class _$Module<Element> extends Module<Element> {
  @override
  final Attr attr;
  @override
  final BuiltList<Region> headers;
  @override
  final BuiltList<Element> items;
  @override
  final int moduleId;
  @override
  final Report report;
  @override
  final int size;
  @override
  final ModuleStyle style;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String url;
  @override
  final int type;
  @override
  final BuiltList<int> wid;
  @override
  final ModuleFollow follow;

  factory _$Module([void Function(ModuleBuilder<Element>) updates]) =>
      (new ModuleBuilder<Element>()..update(updates)).build();

  _$Module._(
      {this.attr,
      this.headers,
      this.items,
      this.moduleId,
      this.report,
      this.size,
      this.style,
      this.title,
      this.subtitle,
      this.url,
      this.type,
      this.wid,
      this.follow})
      : super._() {
    if (Element == dynamic) {
      throw new BuiltValueMissingGenericsError('Module', 'Element');
    }
  }

  @override
  Module<Element> rebuild(void Function(ModuleBuilder<Element>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModuleBuilder<Element> toBuilder() =>
      new ModuleBuilder<Element>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Module &&
        attr == other.attr &&
        headers == other.headers &&
        items == other.items &&
        moduleId == other.moduleId &&
        report == other.report &&
        size == other.size &&
        style == other.style &&
        title == other.title &&
        subtitle == other.subtitle &&
        url == other.url &&
        type == other.type &&
        wid == other.wid &&
        follow == other.follow;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, attr.hashCode),
                                                    headers.hashCode),
                                                items.hashCode),
                                            moduleId.hashCode),
                                        report.hashCode),
                                    size.hashCode),
                                style.hashCode),
                            title.hashCode),
                        subtitle.hashCode),
                    url.hashCode),
                type.hashCode),
            wid.hashCode),
        follow.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Module')
          ..add('attr', attr)
          ..add('headers', headers)
          ..add('items', items)
          ..add('moduleId', moduleId)
          ..add('report', report)
          ..add('size', size)
          ..add('style', style)
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('url', url)
          ..add('type', type)
          ..add('wid', wid)
          ..add('follow', follow))
        .toString();
  }
}

class ModuleBuilder<Element>
    implements Builder<Module<Element>, ModuleBuilder<Element>> {
  _$Module<Element> _$v;

  AttrBuilder _attr;
  AttrBuilder get attr => _$this._attr ??= new AttrBuilder();
  set attr(AttrBuilder attr) => _$this._attr = attr;

  ListBuilder<Region> _headers;
  ListBuilder<Region> get headers =>
      _$this._headers ??= new ListBuilder<Region>();
  set headers(ListBuilder<Region> headers) => _$this._headers = headers;

  ListBuilder<Element> _items;
  ListBuilder<Element> get items =>
      _$this._items ??= new ListBuilder<Element>();
  set items(ListBuilder<Element> items) => _$this._items = items;

  int _moduleId;
  int get moduleId => _$this._moduleId;
  set moduleId(int moduleId) => _$this._moduleId = moduleId;

  ReportBuilder _report;
  ReportBuilder get report => _$this._report ??= new ReportBuilder();
  set report(ReportBuilder report) => _$this._report = report;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  ModuleStyle _style;
  ModuleStyle get style => _$this._style;
  set style(ModuleStyle style) => _$this._style = style;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _subtitle;
  String get subtitle => _$this._subtitle;
  set subtitle(String subtitle) => _$this._subtitle = subtitle;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  ListBuilder<int> _wid;
  ListBuilder<int> get wid => _$this._wid ??= new ListBuilder<int>();
  set wid(ListBuilder<int> wid) => _$this._wid = wid;

  ModuleFollowBuilder _follow;
  ModuleFollowBuilder get follow =>
      _$this._follow ??= new ModuleFollowBuilder();
  set follow(ModuleFollowBuilder follow) => _$this._follow = follow;

  ModuleBuilder();

  ModuleBuilder<Element> get _$this {
    if (_$v != null) {
      _attr = _$v.attr?.toBuilder();
      _headers = _$v.headers?.toBuilder();
      _items = _$v.items?.toBuilder();
      _moduleId = _$v.moduleId;
      _report = _$v.report?.toBuilder();
      _size = _$v.size;
      _style = _$v.style;
      _title = _$v.title;
      _subtitle = _$v.subtitle;
      _url = _$v.url;
      _type = _$v.type;
      _wid = _$v.wid?.toBuilder();
      _follow = _$v.follow?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Module<Element> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Module<Element>;
  }

  @override
  void update(void Function(ModuleBuilder<Element>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Module<Element> build() {
    _$Module<Element> _$result;
    try {
      _$result = _$v ??
          new _$Module<Element>._(
              attr: _attr?.build(),
              headers: _headers?.build(),
              items: _items?.build(),
              moduleId: moduleId,
              report: _report?.build(),
              size: size,
              style: style,
              title: title,
              subtitle: subtitle,
              url: url,
              type: type,
              wid: _wid?.build(),
              follow: _follow?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attr';
        _attr?.build();
        _$failedField = 'headers';
        _headers?.build();
        _$failedField = 'items';
        _items?.build();

        _$failedField = 'report';
        _report?.build();

        _$failedField = 'wid';
        _wid?.build();
        _$failedField = 'follow';
        _follow?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Module', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
