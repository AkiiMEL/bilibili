// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_channel_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChannelGroup> _$channelGroupSerializer =
    new _$ChannelGroupSerializer();

class _$ChannelGroupSerializer implements StructuredSerializer<ChannelGroup> {
  @override
  final Iterable<Type> types = const [ChannelGroup, _$ChannelGroup];
  @override
  final String wireName = 'ChannelGroup';

  @override
  Iterable<Object> serialize(Serializers serializers, ChannelGroup object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.dynamics != null) {
      result
        ..add('dynamic')
        ..add(serializers.serialize(object.dynamics,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Channel)])));
    }
    if (object.rcmd != null) {
      result
        ..add('rcmd')
        ..add(serializers.serialize(object.rcmd,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Channel)])));
    }
    if (object.list != null) {
      result
        ..add('list')
        ..add(serializers.serialize(object.list,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Channel)])));
    }
    return result;
  }

  @override
  ChannelGroup deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChannelGroupBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dynamic':
          result.dynamics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Channel)]))
              as BuiltList<Object>);
          break;
        case 'rcmd':
          result.rcmd.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Channel)]))
              as BuiltList<Object>);
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Channel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ChannelGroup extends ChannelGroup {
  @override
  final BuiltList<Channel> dynamics;
  @override
  final BuiltList<Channel> rcmd;
  @override
  final BuiltList<Channel> list;

  factory _$ChannelGroup([void Function(ChannelGroupBuilder) updates]) =>
      (new ChannelGroupBuilder()..update(updates)).build();

  _$ChannelGroup._({this.dynamics, this.rcmd, this.list}) : super._();

  @override
  ChannelGroup rebuild(void Function(ChannelGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChannelGroupBuilder toBuilder() => new ChannelGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelGroup &&
        dynamics == other.dynamics &&
        rcmd == other.rcmd &&
        list == other.list;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, dynamics.hashCode), rcmd.hashCode), list.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChannelGroup')
          ..add('dynamics', dynamics)
          ..add('rcmd', rcmd)
          ..add('list', list))
        .toString();
  }
}

class ChannelGroupBuilder
    implements Builder<ChannelGroup, ChannelGroupBuilder> {
  _$ChannelGroup _$v;

  ListBuilder<Channel> _dynamics;
  ListBuilder<Channel> get dynamics =>
      _$this._dynamics ??= new ListBuilder<Channel>();
  set dynamics(ListBuilder<Channel> dynamics) => _$this._dynamics = dynamics;

  ListBuilder<Channel> _rcmd;
  ListBuilder<Channel> get rcmd => _$this._rcmd ??= new ListBuilder<Channel>();
  set rcmd(ListBuilder<Channel> rcmd) => _$this._rcmd = rcmd;

  ListBuilder<Channel> _list;
  ListBuilder<Channel> get list => _$this._list ??= new ListBuilder<Channel>();
  set list(ListBuilder<Channel> list) => _$this._list = list;

  ChannelGroupBuilder();

  ChannelGroupBuilder get _$this {
    if (_$v != null) {
      _dynamics = _$v.dynamics?.toBuilder();
      _rcmd = _$v.rcmd?.toBuilder();
      _list = _$v.list?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelGroup other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChannelGroup;
  }

  @override
  void update(void Function(ChannelGroupBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChannelGroup build() {
    _$ChannelGroup _$result;
    try {
      _$result = _$v ??
          new _$ChannelGroup._(
              dynamics: _dynamics?.build(),
              rcmd: _rcmd?.build(),
              list: _list?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dynamics';
        _dynamics?.build();
        _$failedField = 'rcmd';
        _rcmd?.build();
        _$failedField = 'list';
        _list?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ChannelGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
