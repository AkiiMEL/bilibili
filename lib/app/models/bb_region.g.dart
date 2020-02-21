// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_region.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Region> _$regionSerializer = new _$RegionSerializer();

class _$RegionSerializer implements StructuredSerializer<Region> {
  @override
  final Iterable<Type> types = const [Region, _$Region];
  @override
  final String wireName = 'Region';

  @override
  Iterable<Object> serialize(Serializers serializers, Region object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.icon != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.icon,
            specifiedType: const FullType(String)));
    }
    if (object.isExpand != null) {
      result
        ..add('isExpand')
        ..add(serializers.serialize(object.isExpand,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.report != null) {
      result
        ..add('report')
        ..add(serializers.serialize(object.report,
            specifiedType: const FullType(Report)));
    }
    return result;
  }

  @override
  Region deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isExpand':
          result.isExpand = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'report':
          result.report.replace(serializers.deserialize(value,
              specifiedType: const FullType(Report)) as Report);
          break;
      }
    }

    return result.build();
  }
}

class _$Region extends Region {
  @override
  final String icon;
  @override
  final int isExpand;
  @override
  final String title;
  @override
  final String url;
  @override
  final Report report;

  factory _$Region([void Function(RegionBuilder) updates]) =>
      (new RegionBuilder()..update(updates)).build();

  _$Region._({this.icon, this.isExpand, this.title, this.url, this.report})
      : super._();

  @override
  Region rebuild(void Function(RegionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionBuilder toBuilder() => new RegionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Region &&
        icon == other.icon &&
        isExpand == other.isExpand &&
        title == other.title &&
        url == other.url &&
        report == other.report;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, icon.hashCode), isExpand.hashCode), title.hashCode),
            url.hashCode),
        report.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Region')
          ..add('icon', icon)
          ..add('isExpand', isExpand)
          ..add('title', title)
          ..add('url', url)
          ..add('report', report))
        .toString();
  }
}

class RegionBuilder implements Builder<Region, RegionBuilder> {
  _$Region _$v;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  int _isExpand;
  int get isExpand => _$this._isExpand;
  set isExpand(int isExpand) => _$this._isExpand = isExpand;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ReportBuilder _report;
  ReportBuilder get report => _$this._report ??= new ReportBuilder();
  set report(ReportBuilder report) => _$this._report = report;

  RegionBuilder();

  RegionBuilder get _$this {
    if (_$v != null) {
      _icon = _$v.icon;
      _isExpand = _$v.isExpand;
      _title = _$v.title;
      _url = _$v.url;
      _report = _$v.report?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Region other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Region;
  }

  @override
  void update(void Function(RegionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Region build() {
    _$Region _$result;
    try {
      _$result = _$v ??
          new _$Region._(
              icon: icon,
              isExpand: isExpand,
              title: title,
              url: url,
              report: _report?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'report';
        _report?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Region', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
