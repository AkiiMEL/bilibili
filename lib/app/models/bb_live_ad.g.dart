// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_live_ad.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LiveAd> _$liveAdSerializer = new _$LiveAdSerializer();

class _$LiveAdSerializer implements StructuredSerializer<LiveAd> {
  @override
  final Iterable<Type> types = const [LiveAd, _$LiveAd];
  @override
  final String wireName = 'LiveAd';

  @override
  Iterable<Object> serialize(Serializers serializers, LiveAd object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.pic != null) {
      result
        ..add('pic')
        ..add(serializers.serialize(object.pic,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.sourceContent != null) {
      result
        ..add('source_content')
        ..add(serializers.serialize(object.sourceContent,
            specifiedType: const FullType(SourceContent)));
    }
    return result;
  }

  @override
  LiveAd deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LiveAdBuilder();

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
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pic':
          result.pic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'source_content':
          result.sourceContent.replace(serializers.deserialize(value,
              specifiedType: const FullType(SourceContent)) as SourceContent);
          break;
      }
    }

    return result.build();
  }
}

class _$LiveAd extends LiveAd {
  @override
  final int id;
  @override
  final String link;
  @override
  final String pic;
  @override
  final String title;
  @override
  final String content;
  @override
  final SourceContent sourceContent;

  factory _$LiveAd([void Function(LiveAdBuilder) updates]) =>
      (new LiveAdBuilder()..update(updates)).build();

  _$LiveAd._(
      {this.id,
      this.link,
      this.pic,
      this.title,
      this.content,
      this.sourceContent})
      : super._();

  @override
  LiveAd rebuild(void Function(LiveAdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveAdBuilder toBuilder() => new LiveAdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveAd &&
        id == other.id &&
        link == other.link &&
        pic == other.pic &&
        title == other.title &&
        content == other.content &&
        sourceContent == other.sourceContent;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), link.hashCode), pic.hashCode),
                title.hashCode),
            content.hashCode),
        sourceContent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LiveAd')
          ..add('id', id)
          ..add('link', link)
          ..add('pic', pic)
          ..add('title', title)
          ..add('content', content)
          ..add('sourceContent', sourceContent))
        .toString();
  }
}

class LiveAdBuilder implements Builder<LiveAd, LiveAdBuilder> {
  _$LiveAd _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _pic;
  String get pic => _$this._pic;
  set pic(String pic) => _$this._pic = pic;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  SourceContentBuilder _sourceContent;
  SourceContentBuilder get sourceContent =>
      _$this._sourceContent ??= new SourceContentBuilder();
  set sourceContent(SourceContentBuilder sourceContent) =>
      _$this._sourceContent = sourceContent;

  LiveAdBuilder();

  LiveAdBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _link = _$v.link;
      _pic = _$v.pic;
      _title = _$v.title;
      _content = _$v.content;
      _sourceContent = _$v.sourceContent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveAd other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LiveAd;
  }

  @override
  void update(void Function(LiveAdBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LiveAd build() {
    _$LiveAd _$result;
    try {
      _$result = _$v ??
          new _$LiveAd._(
              id: id,
              link: link,
              pic: pic,
              title: title,
              content: content,
              sourceContent: _sourceContent?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sourceContent';
        _sourceContent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LiveAd', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
