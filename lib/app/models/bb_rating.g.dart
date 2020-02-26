// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Rating> _$ratingSerializer = new _$RatingSerializer();

class _$RatingSerializer implements StructuredSerializer<Rating> {
  @override
  final Iterable<Type> types = const [Rating, _$Rating];
  @override
  final String wireName = 'Rating';

  @override
  Iterable<Object> serialize(Serializers serializers, Rating object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.count != null) {
      result
        ..add('count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Rating deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RatingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Rating extends Rating {
  @override
  final int count;
  @override
  final double score;

  factory _$Rating([void Function(RatingBuilder) updates]) =>
      (new RatingBuilder()..update(updates)).build();

  _$Rating._({this.count, this.score}) : super._();

  @override
  Rating rebuild(void Function(RatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingBuilder toBuilder() => new RatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rating && count == other.count && score == other.score;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, count.hashCode), score.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Rating')
          ..add('count', count)
          ..add('score', score))
        .toString();
  }
}

class RatingBuilder implements Builder<Rating, RatingBuilder> {
  _$Rating _$v;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  double _score;
  double get score => _$this._score;
  set score(double score) => _$this._score = score;

  RatingBuilder();

  RatingBuilder get _$this {
    if (_$v != null) {
      _count = _$v.count;
      _score = _$v.score;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rating other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Rating;
  }

  @override
  void update(void Function(RatingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Rating build() {
    final _$result = _$v ?? new _$Rating._(count: count, score: score);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
