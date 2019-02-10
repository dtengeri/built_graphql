// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Hero> _$heroSerializer = new _$HeroSerializer();

class _$HeroSerializer implements StructuredSerializer<Hero> {
  @override
  final Iterable<Type> types = const [Hero, _$Hero];
  @override
  final String wireName = 'Hero';

  @override
  Iterable serialize(Serializers serializers, Hero object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.heroFriends != null) {
      result
        ..add('heroFriends')
        ..add(serializers.serialize(object.heroFriends,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Friend)])));
    }

    return result;
  }

  @override
  Hero deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HeroBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'heroFriends':
          result.heroFriends.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Friend)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Hero extends Hero {
  @override
  final String name;
  @override
  final BuiltList<Friend> heroFriends;

  factory _$Hero([void updates(HeroBuilder b)]) =>
      (new HeroBuilder()..update(updates)).build();

  _$Hero._({this.name, this.heroFriends}) : super._();

  @override
  Hero rebuild(void updates(HeroBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HeroBuilder toBuilder() => new HeroBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hero &&
        name == other.name &&
        heroFriends == other.heroFriends;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), heroFriends.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Hero')
          ..add('name', name)
          ..add('heroFriends', heroFriends))
        .toString();
  }
}

class HeroBuilder implements Builder<Hero, HeroBuilder> {
  _$Hero _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<Friend> _heroFriends;
  ListBuilder<Friend> get heroFriends =>
      _$this._heroFriends ??= new ListBuilder<Friend>();
  set heroFriends(ListBuilder<Friend> heroFriends) =>
      _$this._heroFriends = heroFriends;

  HeroBuilder();

  HeroBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _heroFriends = _$v.heroFriends?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Hero other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Hero;
  }

  @override
  void update(void updates(HeroBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Hero build() {
    _$Hero _$result;
    try {
      _$result =
          _$v ?? new _$Hero._(name: name, heroFriends: _heroFriends?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'heroFriends';
        _heroFriends?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Hero', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
