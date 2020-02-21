// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_three_point.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ThreePoint> _$threePointSerializer = new _$ThreePointSerializer();
Serializer<ThreePointV2> _$threePointV2Serializer =
    new _$ThreePointV2Serializer();

class _$ThreePointSerializer implements StructuredSerializer<ThreePoint> {
  @override
  final Iterable<Type> types = const [ThreePoint, _$ThreePoint];
  @override
  final String wireName = 'ThreePoint';

  @override
  Iterable<Object> serialize(Serializers serializers, ThreePoint object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.dislikeReasons != null) {
      result
        ..add('dislike_reasons')
        ..add(serializers.serialize(object.dislikeReasons,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Reason)])));
    }
    if (object.feedbacks != null) {
      result
        ..add('feedbacks')
        ..add(serializers.serialize(object.feedbacks,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Reason)])));
    }
    if (object.watchLater != null) {
      result
        ..add('watch_later')
        ..add(serializers.serialize(object.watchLater,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ThreePoint deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThreePointBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dislike_reasons':
          result.dislikeReasons.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Reason)]))
              as BuiltList<Object>);
          break;
        case 'feedbacks':
          result.feedbacks.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Reason)]))
              as BuiltList<Object>);
          break;
        case 'watch_later':
          result.watchLater = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ThreePointV2Serializer implements StructuredSerializer<ThreePointV2> {
  @override
  final Iterable<Type> types = const [ThreePointV2, _$ThreePointV2];
  @override
  final String wireName = 'ThreePointV2';

  @override
  Iterable<Object> serialize(Serializers serializers, ThreePointV2 object,
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
    if (object.subtitle != null) {
      result
        ..add('subtitle')
        ..add(serializers.serialize(object.subtitle,
            specifiedType: const FullType(String)));
    }
    if (object.reasons != null) {
      result
        ..add('reasons')
        ..add(serializers.serialize(object.reasons,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Reason)])));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ThreePointV2 deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThreePointV2Builder();

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
        case 'subtitle':
          result.subtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reasons':
          result.reasons.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Reason)]))
              as BuiltList<Object>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ThreePoint extends ThreePoint {
  @override
  final BuiltList<Reason> dislikeReasons;
  @override
  final BuiltList<Reason> feedbacks;
  @override
  final int watchLater;

  factory _$ThreePoint([void Function(ThreePointBuilder) updates]) =>
      (new ThreePointBuilder()..update(updates)).build();

  _$ThreePoint._({this.dislikeReasons, this.feedbacks, this.watchLater})
      : super._();

  @override
  ThreePoint rebuild(void Function(ThreePointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThreePointBuilder toBuilder() => new ThreePointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThreePoint &&
        dislikeReasons == other.dislikeReasons &&
        feedbacks == other.feedbacks &&
        watchLater == other.watchLater;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, dislikeReasons.hashCode), feedbacks.hashCode),
        watchLater.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ThreePoint')
          ..add('dislikeReasons', dislikeReasons)
          ..add('feedbacks', feedbacks)
          ..add('watchLater', watchLater))
        .toString();
  }
}

class ThreePointBuilder implements Builder<ThreePoint, ThreePointBuilder> {
  _$ThreePoint _$v;

  ListBuilder<Reason> _dislikeReasons;
  ListBuilder<Reason> get dislikeReasons =>
      _$this._dislikeReasons ??= new ListBuilder<Reason>();
  set dislikeReasons(ListBuilder<Reason> dislikeReasons) =>
      _$this._dislikeReasons = dislikeReasons;

  ListBuilder<Reason> _feedbacks;
  ListBuilder<Reason> get feedbacks =>
      _$this._feedbacks ??= new ListBuilder<Reason>();
  set feedbacks(ListBuilder<Reason> feedbacks) => _$this._feedbacks = feedbacks;

  int _watchLater;
  int get watchLater => _$this._watchLater;
  set watchLater(int watchLater) => _$this._watchLater = watchLater;

  ThreePointBuilder();

  ThreePointBuilder get _$this {
    if (_$v != null) {
      _dislikeReasons = _$v.dislikeReasons?.toBuilder();
      _feedbacks = _$v.feedbacks?.toBuilder();
      _watchLater = _$v.watchLater;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThreePoint other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ThreePoint;
  }

  @override
  void update(void Function(ThreePointBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ThreePoint build() {
    _$ThreePoint _$result;
    try {
      _$result = _$v ??
          new _$ThreePoint._(
              dislikeReasons: _dislikeReasons?.build(),
              feedbacks: _feedbacks?.build(),
              watchLater: watchLater);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dislikeReasons';
        _dislikeReasons?.build();
        _$failedField = 'feedbacks';
        _feedbacks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ThreePoint', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ThreePointV2 extends ThreePointV2 {
  @override
  final String title;
  @override
  final String type;
  @override
  final String subtitle;
  @override
  final BuiltList<Reason> reasons;
  @override
  final int id;

  factory _$ThreePointV2([void Function(ThreePointV2Builder) updates]) =>
      (new ThreePointV2Builder()..update(updates)).build();

  _$ThreePointV2._(
      {this.title, this.type, this.subtitle, this.reasons, this.id})
      : super._();

  @override
  ThreePointV2 rebuild(void Function(ThreePointV2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThreePointV2Builder toBuilder() => new ThreePointV2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThreePointV2 &&
        title == other.title &&
        type == other.type &&
        subtitle == other.subtitle &&
        reasons == other.reasons &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, title.hashCode), type.hashCode), subtitle.hashCode),
            reasons.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ThreePointV2')
          ..add('title', title)
          ..add('type', type)
          ..add('subtitle', subtitle)
          ..add('reasons', reasons)
          ..add('id', id))
        .toString();
  }
}

class ThreePointV2Builder
    implements Builder<ThreePointV2, ThreePointV2Builder> {
  _$ThreePointV2 _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _subtitle;
  String get subtitle => _$this._subtitle;
  set subtitle(String subtitle) => _$this._subtitle = subtitle;

  ListBuilder<Reason> _reasons;
  ListBuilder<Reason> get reasons =>
      _$this._reasons ??= new ListBuilder<Reason>();
  set reasons(ListBuilder<Reason> reasons) => _$this._reasons = reasons;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ThreePointV2Builder();

  ThreePointV2Builder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _type = _$v.type;
      _subtitle = _$v.subtitle;
      _reasons = _$v.reasons?.toBuilder();
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThreePointV2 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ThreePointV2;
  }

  @override
  void update(void Function(ThreePointV2Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ThreePointV2 build() {
    _$ThreePointV2 _$result;
    try {
      _$result = _$v ??
          new _$ThreePointV2._(
              title: title,
              type: type,
              subtitle: subtitle,
              reasons: _reasons?.build(),
              id: id);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reasons';
        _reasons?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ThreePointV2', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
