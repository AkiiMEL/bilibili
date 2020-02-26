// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Activity> _$activitySerializer = new _$ActivitySerializer();

class _$ActivitySerializer implements StructuredSerializer<Activity> {
  @override
  final Iterable<Type> types = const [Activity, _$Activity];
  @override
  final String wireName = 'Activity';

  @override
  Iterable<Object> serialize(Serializers serializers, Activity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cover != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(object.cover,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    if (object.threshold != null) {
      result
        ..add('threshold')
        ..add(serializers.serialize(object.threshold,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Threshold)])));
    }
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
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Activity deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActivityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'threshold':
          result.threshold.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Threshold)]))
              as BuiltList<Object>);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Activity extends Activity {
  @override
  final String cover;
  @override
  final int id;
  @override
  final String link;
  @override
  final BuiltList<Threshold> threshold;
  @override
  final String title;
  @override
  final int type;

  factory _$Activity([void Function(ActivityBuilder) updates]) =>
      (new ActivityBuilder()..update(updates)).build();

  _$Activity._(
      {this.cover, this.id, this.link, this.threshold, this.title, this.type})
      : super._();

  @override
  Activity rebuild(void Function(ActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityBuilder toBuilder() => new ActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Activity &&
        cover == other.cover &&
        id == other.id &&
        link == other.link &&
        threshold == other.threshold &&
        title == other.title &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, cover.hashCode), id.hashCode), link.hashCode),
                threshold.hashCode),
            title.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Activity')
          ..add('cover', cover)
          ..add('id', id)
          ..add('link', link)
          ..add('threshold', threshold)
          ..add('title', title)
          ..add('type', type))
        .toString();
  }
}

class ActivityBuilder implements Builder<Activity, ActivityBuilder> {
  _$Activity _$v;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  ListBuilder<Threshold> _threshold;
  ListBuilder<Threshold> get threshold =>
      _$this._threshold ??= new ListBuilder<Threshold>();
  set threshold(ListBuilder<Threshold> threshold) =>
      _$this._threshold = threshold;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  ActivityBuilder();

  ActivityBuilder get _$this {
    if (_$v != null) {
      _cover = _$v.cover;
      _id = _$v.id;
      _link = _$v.link;
      _threshold = _$v.threshold?.toBuilder();
      _title = _$v.title;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Activity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Activity;
  }

  @override
  void update(void Function(ActivityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Activity build() {
    _$Activity _$result;
    try {
      _$result = _$v ??
          new _$Activity._(
              cover: cover,
              id: id,
              link: link,
              threshold: _threshold?.build(),
              title: title,
              type: type);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'threshold';
        _threshold?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Activity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
