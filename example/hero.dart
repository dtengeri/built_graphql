import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'friend.dart';

part 'hero.g.dart';

abstract class Hero implements Built<Hero, HeroBuilder> {
  static Serializer<Hero> get serializer => _$heroSerializer;

  @nullable
  String get name;

  @nullable
  BuiltList<Friend> get heroFriends;

  factory Hero([updates(HeroBuilder b)]) = _$Hero;
  Hero._();
}
