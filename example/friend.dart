import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'friend.g.dart';

abstract class Friend implements Built<Friend, FriendBuilder> {
  static Serializer<Friend> get serializer => _$friendSerializer;

  @nullable
  String get id;

  @nullable
  String get name;

  factory Friend([updates(FriendBuilder b)]) = _$Friend;
  Friend._();
}
