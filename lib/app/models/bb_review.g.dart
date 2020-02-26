// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_review.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Review> _$reviewSerializer = new _$ReviewSerializer();

class _$ReviewSerializer implements StructuredSerializer<Review> {
  @override
  final Iterable<Type> types = const [Review, _$Review];
  @override
  final String wireName = 'Review';

  @override
  Iterable<Object> serialize(Serializers serializers, Review object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.articleUrl != null) {
      result
        ..add('article_url')
        ..add(serializers.serialize(object.articleUrl,
            specifiedType: const FullType(String)));
    }
    if (object.isOpen != null) {
      result
        ..add('is_open')
        ..add(serializers.serialize(object.isOpen,
            specifiedType: const FullType(int)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Review deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'article_url':
          result.articleUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_open':
          result.isOpen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Review extends Review {
  @override
  final String articleUrl;
  @override
  final int isOpen;
  @override
  final int score;

  factory _$Review([void Function(ReviewBuilder) updates]) =>
      (new ReviewBuilder()..update(updates)).build();

  _$Review._({this.articleUrl, this.isOpen, this.score}) : super._();

  @override
  Review rebuild(void Function(ReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewBuilder toBuilder() => new ReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
        articleUrl == other.articleUrl &&
        isOpen == other.isOpen &&
        score == other.score;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, articleUrl.hashCode), isOpen.hashCode), score.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Review')
          ..add('articleUrl', articleUrl)
          ..add('isOpen', isOpen)
          ..add('score', score))
        .toString();
  }
}

class ReviewBuilder implements Builder<Review, ReviewBuilder> {
  _$Review _$v;

  String _articleUrl;
  String get articleUrl => _$this._articleUrl;
  set articleUrl(String articleUrl) => _$this._articleUrl = articleUrl;

  int _isOpen;
  int get isOpen => _$this._isOpen;
  set isOpen(int isOpen) => _$this._isOpen = isOpen;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  ReviewBuilder();

  ReviewBuilder get _$this {
    if (_$v != null) {
      _articleUrl = _$v.articleUrl;
      _isOpen = _$v.isOpen;
      _score = _$v.score;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Review other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Review;
  }

  @override
  void update(void Function(ReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Review build() {
    final _$result = _$v ??
        new _$Review._(articleUrl: articleUrl, isOpen: isOpen, score: score);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
