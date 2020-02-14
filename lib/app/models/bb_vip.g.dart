// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_vip.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Vip> _$vipSerializer = new _$VipSerializer();
Serializer<VipLabel> _$vipLabelSerializer = new _$VipLabelSerializer();

class _$VipSerializer implements StructuredSerializer<Vip> {
  @override
  final Iterable<Type> types = const [Vip, _$Vip];
  @override
  final String wireName = 'Vip';

  @override
  Iterable<Object> serialize(Serializers serializers, Vip object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.vipPayType != null) {
      result
        ..add('vip_pay_type')
        ..add(serializers.serialize(object.vipPayType,
            specifiedType: const FullType(int)));
    }
    if (object.themeType != null) {
      result
        ..add('theme_type')
        ..add(serializers.serialize(object.themeType,
            specifiedType: const FullType(int)));
    }
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(VipLabel)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.dueDate != null) {
      result
        ..add('due_date')
        ..add(serializers.serialize(object.dueDate,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Vip deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VipBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'vip_pay_type':
          result.vipPayType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'theme_type':
          result.themeType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'label':
          result.label.replace(serializers.deserialize(value,
              specifiedType: const FullType(VipLabel)) as VipLabel);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'due_date':
          result.dueDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$VipLabelSerializer implements StructuredSerializer<VipLabel> {
  @override
  final Iterable<Type> types = const [VipLabel, _$VipLabel];
  @override
  final String wireName = 'VipLabel';

  @override
  Iterable<Object> serialize(Serializers serializers, VipLabel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  VipLabel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VipLabelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Vip extends Vip {
  @override
  final int status;
  @override
  final int vipPayType;
  @override
  final int themeType;
  @override
  final VipLabel label;
  @override
  final int type;
  @override
  final int dueDate;

  factory _$Vip([void Function(VipBuilder) updates]) =>
      (new VipBuilder()..update(updates)).build();

  _$Vip._(
      {this.status,
      this.vipPayType,
      this.themeType,
      this.label,
      this.type,
      this.dueDate})
      : super._();

  @override
  Vip rebuild(void Function(VipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VipBuilder toBuilder() => new VipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Vip &&
        status == other.status &&
        vipPayType == other.vipPayType &&
        themeType == other.themeType &&
        label == other.label &&
        type == other.type &&
        dueDate == other.dueDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, status.hashCode), vipPayType.hashCode),
                    themeType.hashCode),
                label.hashCode),
            type.hashCode),
        dueDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Vip')
          ..add('status', status)
          ..add('vipPayType', vipPayType)
          ..add('themeType', themeType)
          ..add('label', label)
          ..add('type', type)
          ..add('dueDate', dueDate))
        .toString();
  }
}

class VipBuilder implements Builder<Vip, VipBuilder> {
  _$Vip _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  int _vipPayType;
  int get vipPayType => _$this._vipPayType;
  set vipPayType(int vipPayType) => _$this._vipPayType = vipPayType;

  int _themeType;
  int get themeType => _$this._themeType;
  set themeType(int themeType) => _$this._themeType = themeType;

  VipLabelBuilder _label;
  VipLabelBuilder get label => _$this._label ??= new VipLabelBuilder();
  set label(VipLabelBuilder label) => _$this._label = label;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  int _dueDate;
  int get dueDate => _$this._dueDate;
  set dueDate(int dueDate) => _$this._dueDate = dueDate;

  VipBuilder();

  VipBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _vipPayType = _$v.vipPayType;
      _themeType = _$v.themeType;
      _label = _$v.label?.toBuilder();
      _type = _$v.type;
      _dueDate = _$v.dueDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Vip other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Vip;
  }

  @override
  void update(void Function(VipBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Vip build() {
    _$Vip _$result;
    try {
      _$result = _$v ??
          new _$Vip._(
              status: status,
              vipPayType: vipPayType,
              themeType: themeType,
              label: _label?.build(),
              type: type,
              dueDate: dueDate);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'label';
        _label?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Vip', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$VipLabel extends VipLabel {
  @override
  final String path;

  factory _$VipLabel([void Function(VipLabelBuilder) updates]) =>
      (new VipLabelBuilder()..update(updates)).build();

  _$VipLabel._({this.path}) : super._();

  @override
  VipLabel rebuild(void Function(VipLabelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VipLabelBuilder toBuilder() => new VipLabelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VipLabel && path == other.path;
  }

  @override
  int get hashCode {
    return $jf($jc(0, path.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VipLabel')..add('path', path))
        .toString();
  }
}

class VipLabelBuilder implements Builder<VipLabel, VipLabelBuilder> {
  _$VipLabel _$v;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  VipLabelBuilder();

  VipLabelBuilder get _$this {
    if (_$v != null) {
      _path = _$v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VipLabel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VipLabel;
  }

  @override
  void update(void Function(VipLabelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VipLabel build() {
    final _$result = _$v ?? new _$VipLabel._(path: path);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
