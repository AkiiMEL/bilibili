// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_mine.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Mine> _$mineSerializer = new _$MineSerializer();

class _$MineSerializer implements StructuredSerializer<Mine> {
  @override
  final Iterable<Type> types = const [Mine, _$Mine];
  @override
  final String wireName = 'Mine';

  @override
  Iterable<Object> serialize(Serializers serializers, Mine object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.rank != null) {
      result
        ..add('rank')
        ..add(serializers.serialize(object.rank,
            specifiedType: const FullType(int)));
    }
    if (object.follower != null) {
      result
        ..add('follower')
        ..add(serializers.serialize(object.follower,
            specifiedType: const FullType(int)));
    }
    if (object.officialVerify != null) {
      result
        ..add('official_verify')
        ..add(serializers.serialize(object.officialVerify,
            specifiedType: const FullType(OfficialVerify)));
    }
    if (object.pendant != null) {
      result
        ..add('pendant')
        ..add(serializers.serialize(object.pendant,
            specifiedType: const FullType(Pendant)));
    }
    if (object.bcoin != null) {
      result
        ..add('bcoin')
        ..add(serializers.serialize(object.bcoin,
            specifiedType: const FullType(int)));
    }
    if (object.mid != null) {
      result
        ..add('mid')
        ..add(serializers.serialize(object.mid,
            specifiedType: const FullType(int)));
    }
    if (object.silence != null) {
      result
        ..add('silence')
        ..add(serializers.serialize(object.silence,
            specifiedType: const FullType(int)));
    }
    if (object.vipType != null) {
      result
        ..add('vip_type')
        ..add(serializers.serialize(object.vipType,
            specifiedType: const FullType(int)));
    }
    if (object.newFollowers != null) {
      result
        ..add('new_followers')
        ..add(serializers.serialize(object.newFollowers,
            specifiedType: const FullType(int)));
    }
    if (object.sex != null) {
      result
        ..add('sex')
        ..add(serializers.serialize(object.sex,
            specifiedType: const FullType(int)));
    }
    if (object.vipSectionV2 != null) {
      result
        ..add('vip_section_v2')
        ..add(serializers.serialize(object.vipSectionV2,
            specifiedType: const FullType(ClassifiedServices)));
    }
    if (object.sections != null) {
      result
        ..add('sections')
        ..add(serializers.serialize(object.sections,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ClassifiedServices)])));
    }
    if (object.showVideoup != null) {
      result
        ..add('show_videoup')
        ..add(serializers.serialize(object.showVideoup,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.showCreative != null) {
      result
        ..add('show_creative')
        ..add(serializers.serialize(object.showCreative,
            specifiedType: const FullType(int)));
    }
    if (object.dynamics != null) {
      result
        ..add('dynamic')
        ..add(serializers.serialize(object.dynamics,
            specifiedType: const FullType(int)));
    }
    if (object.vipSection != null) {
      result
        ..add('vip_section')
        ..add(serializers.serialize(object.vipSection,
            specifiedType: const FullType(ClassifiedServices)));
    }
    if (object.level != null) {
      result
        ..add('level')
        ..add(serializers.serialize(object.level,
            specifiedType: const FullType(int)));
    }
    if (object.coin != null) {
      result
        ..add('coin')
        ..add(serializers.serialize(object.coin,
            specifiedType: const FullType(double)));
    }
    if (object.audioType != null) {
      result
        ..add('audio_type')
        ..add(serializers.serialize(object.audioType,
            specifiedType: const FullType(int)));
    }
    if (object.following != null) {
      result
        ..add('following')
        ..add(serializers.serialize(object.following,
            specifiedType: const FullType(int)));
    }
    if (object.face != null) {
      result
        ..add('face')
        ..add(serializers.serialize(object.face,
            specifiedType: const FullType(String)));
    }
    if (object.vip != null) {
      result
        ..add('vip')
        ..add(serializers.serialize(object.vip,
            specifiedType: const FullType(Vip)));
    }
    return result;
  }

  @override
  Mine deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MineBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'follower':
          result.follower = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'official_verify':
          result.officialVerify.replace(serializers.deserialize(value,
              specifiedType: const FullType(OfficialVerify)) as OfficialVerify);
          break;
        case 'pendant':
          result.pendant.replace(serializers.deserialize(value,
              specifiedType: const FullType(Pendant)) as Pendant);
          break;
        case 'bcoin':
          result.bcoin = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'mid':
          result.mid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'silence':
          result.silence = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'vip_type':
          result.vipType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'new_followers':
          result.newFollowers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sex':
          result.sex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'vip_section_v2':
          result.vipSectionV2.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ClassifiedServices))
              as ClassifiedServices);
          break;
        case 'sections':
          result.sections.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ClassifiedServices)]))
              as BuiltList<Object>);
          break;
        case 'show_videoup':
          result.showVideoup = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'show_creative':
          result.showCreative = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'dynamic':
          result.dynamics = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'vip_section':
          result.vipSection.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ClassifiedServices))
              as ClassifiedServices);
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'coin':
          result.coin = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'audio_type':
          result.audioType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'following':
          result.following = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'face':
          result.face = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vip':
          result.vip.replace(serializers.deserialize(value,
              specifiedType: const FullType(Vip)) as Vip);
          break;
      }
    }

    return result.build();
  }
}

class _$Mine extends Mine {
  @override
  final int rank;
  @override
  final int follower;
  @override
  final OfficialVerify officialVerify;
  @override
  final Pendant pendant;
  @override
  final int bcoin;
  @override
  final int mid;
  @override
  final int silence;
  @override
  final int vipType;
  @override
  final int newFollowers;
  @override
  final int sex;
  @override
  final ClassifiedServices vipSectionV2;
  @override
  final BuiltList<ClassifiedServices> sections;
  @override
  final int showVideoup;
  @override
  final String name;
  @override
  final int showCreative;
  @override
  final int dynamics;
  @override
  final ClassifiedServices vipSection;
  @override
  final int level;
  @override
  final double coin;
  @override
  final int audioType;
  @override
  final int following;
  @override
  final String face;
  @override
  final Vip vip;

  factory _$Mine([void Function(MineBuilder) updates]) =>
      (new MineBuilder()..update(updates)).build();

  _$Mine._(
      {this.rank,
      this.follower,
      this.officialVerify,
      this.pendant,
      this.bcoin,
      this.mid,
      this.silence,
      this.vipType,
      this.newFollowers,
      this.sex,
      this.vipSectionV2,
      this.sections,
      this.showVideoup,
      this.name,
      this.showCreative,
      this.dynamics,
      this.vipSection,
      this.level,
      this.coin,
      this.audioType,
      this.following,
      this.face,
      this.vip})
      : super._();

  @override
  Mine rebuild(void Function(MineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MineBuilder toBuilder() => new MineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Mine &&
        rank == other.rank &&
        follower == other.follower &&
        officialVerify == other.officialVerify &&
        pendant == other.pendant &&
        bcoin == other.bcoin &&
        mid == other.mid &&
        silence == other.silence &&
        vipType == other.vipType &&
        newFollowers == other.newFollowers &&
        sex == other.sex &&
        vipSectionV2 == other.vipSectionV2 &&
        sections == other.sections &&
        showVideoup == other.showVideoup &&
        name == other.name &&
        showCreative == other.showCreative &&
        dynamics == other.dynamics &&
        vipSection == other.vipSection &&
        level == other.level &&
        coin == other.coin &&
        audioType == other.audioType &&
        following == other.following &&
        face == other.face &&
        vip == other.vip;
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc(0, rank.hashCode), follower.hashCode), officialVerify.hashCode), pendant.hashCode),
                                                                                bcoin.hashCode),
                                                                            mid.hashCode),
                                                                        silence.hashCode),
                                                                    vipType.hashCode),
                                                                newFollowers.hashCode),
                                                            sex.hashCode),
                                                        vipSectionV2.hashCode),
                                                    sections.hashCode),
                                                showVideoup.hashCode),
                                            name.hashCode),
                                        showCreative.hashCode),
                                    dynamics.hashCode),
                                vipSection.hashCode),
                            level.hashCode),
                        coin.hashCode),
                    audioType.hashCode),
                following.hashCode),
            face.hashCode),
        vip.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Mine')
          ..add('rank', rank)
          ..add('follower', follower)
          ..add('officialVerify', officialVerify)
          ..add('pendant', pendant)
          ..add('bcoin', bcoin)
          ..add('mid', mid)
          ..add('silence', silence)
          ..add('vipType', vipType)
          ..add('newFollowers', newFollowers)
          ..add('sex', sex)
          ..add('vipSectionV2', vipSectionV2)
          ..add('sections', sections)
          ..add('showVideoup', showVideoup)
          ..add('name', name)
          ..add('showCreative', showCreative)
          ..add('dynamics', dynamics)
          ..add('vipSection', vipSection)
          ..add('level', level)
          ..add('coin', coin)
          ..add('audioType', audioType)
          ..add('following', following)
          ..add('face', face)
          ..add('vip', vip))
        .toString();
  }
}

class MineBuilder implements Builder<Mine, MineBuilder> {
  _$Mine _$v;

  int _rank;
  int get rank => _$this._rank;
  set rank(int rank) => _$this._rank = rank;

  int _follower;
  int get follower => _$this._follower;
  set follower(int follower) => _$this._follower = follower;

  OfficialVerifyBuilder _officialVerify;
  OfficialVerifyBuilder get officialVerify =>
      _$this._officialVerify ??= new OfficialVerifyBuilder();
  set officialVerify(OfficialVerifyBuilder officialVerify) =>
      _$this._officialVerify = officialVerify;

  PendantBuilder _pendant;
  PendantBuilder get pendant => _$this._pendant ??= new PendantBuilder();
  set pendant(PendantBuilder pendant) => _$this._pendant = pendant;

  int _bcoin;
  int get bcoin => _$this._bcoin;
  set bcoin(int bcoin) => _$this._bcoin = bcoin;

  int _mid;
  int get mid => _$this._mid;
  set mid(int mid) => _$this._mid = mid;

  int _silence;
  int get silence => _$this._silence;
  set silence(int silence) => _$this._silence = silence;

  int _vipType;
  int get vipType => _$this._vipType;
  set vipType(int vipType) => _$this._vipType = vipType;

  int _newFollowers;
  int get newFollowers => _$this._newFollowers;
  set newFollowers(int newFollowers) => _$this._newFollowers = newFollowers;

  int _sex;
  int get sex => _$this._sex;
  set sex(int sex) => _$this._sex = sex;

  ClassifiedServicesBuilder _vipSectionV2;
  ClassifiedServicesBuilder get vipSectionV2 =>
      _$this._vipSectionV2 ??= new ClassifiedServicesBuilder();
  set vipSectionV2(ClassifiedServicesBuilder vipSectionV2) =>
      _$this._vipSectionV2 = vipSectionV2;

  ListBuilder<ClassifiedServices> _sections;
  ListBuilder<ClassifiedServices> get sections =>
      _$this._sections ??= new ListBuilder<ClassifiedServices>();
  set sections(ListBuilder<ClassifiedServices> sections) =>
      _$this._sections = sections;

  int _showVideoup;
  int get showVideoup => _$this._showVideoup;
  set showVideoup(int showVideoup) => _$this._showVideoup = showVideoup;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _showCreative;
  int get showCreative => _$this._showCreative;
  set showCreative(int showCreative) => _$this._showCreative = showCreative;

  int _dynamics;
  int get dynamics => _$this._dynamics;
  set dynamics(int dynamics) => _$this._dynamics = dynamics;

  ClassifiedServicesBuilder _vipSection;
  ClassifiedServicesBuilder get vipSection =>
      _$this._vipSection ??= new ClassifiedServicesBuilder();
  set vipSection(ClassifiedServicesBuilder vipSection) =>
      _$this._vipSection = vipSection;

  int _level;
  int get level => _$this._level;
  set level(int level) => _$this._level = level;

  double _coin;
  double get coin => _$this._coin;
  set coin(double coin) => _$this._coin = coin;

  int _audioType;
  int get audioType => _$this._audioType;
  set audioType(int audioType) => _$this._audioType = audioType;

  int _following;
  int get following => _$this._following;
  set following(int following) => _$this._following = following;

  String _face;
  String get face => _$this._face;
  set face(String face) => _$this._face = face;

  VipBuilder _vip;
  VipBuilder get vip => _$this._vip ??= new VipBuilder();
  set vip(VipBuilder vip) => _$this._vip = vip;

  MineBuilder();

  MineBuilder get _$this {
    if (_$v != null) {
      _rank = _$v.rank;
      _follower = _$v.follower;
      _officialVerify = _$v.officialVerify?.toBuilder();
      _pendant = _$v.pendant?.toBuilder();
      _bcoin = _$v.bcoin;
      _mid = _$v.mid;
      _silence = _$v.silence;
      _vipType = _$v.vipType;
      _newFollowers = _$v.newFollowers;
      _sex = _$v.sex;
      _vipSectionV2 = _$v.vipSectionV2?.toBuilder();
      _sections = _$v.sections?.toBuilder();
      _showVideoup = _$v.showVideoup;
      _name = _$v.name;
      _showCreative = _$v.showCreative;
      _dynamics = _$v.dynamics;
      _vipSection = _$v.vipSection?.toBuilder();
      _level = _$v.level;
      _coin = _$v.coin;
      _audioType = _$v.audioType;
      _following = _$v.following;
      _face = _$v.face;
      _vip = _$v.vip?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Mine other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Mine;
  }

  @override
  void update(void Function(MineBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Mine build() {
    _$Mine _$result;
    try {
      _$result = _$v ??
          new _$Mine._(
              rank: rank,
              follower: follower,
              officialVerify: _officialVerify?.build(),
              pendant: _pendant?.build(),
              bcoin: bcoin,
              mid: mid,
              silence: silence,
              vipType: vipType,
              newFollowers: newFollowers,
              sex: sex,
              vipSectionV2: _vipSectionV2?.build(),
              sections: _sections?.build(),
              showVideoup: showVideoup,
              name: name,
              showCreative: showCreative,
              dynamics: dynamics,
              vipSection: _vipSection?.build(),
              level: level,
              coin: coin,
              audioType: audioType,
              following: following,
              face: face,
              vip: _vip?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'officialVerify';
        _officialVerify?.build();
        _$failedField = 'pendant';
        _pendant?.build();

        _$failedField = 'vipSectionV2';
        _vipSectionV2?.build();
        _$failedField = 'sections';
        _sections?.build();

        _$failedField = 'vipSection';
        _vipSection?.build();

        _$failedField = 'vip';
        _vip?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Mine', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
