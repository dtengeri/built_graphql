import 'package:built_collection/built_collection.dart';
import 'package:built_graphql/src/graphql_error.dart';
import 'package:built_graphql/src/graphql_error_location.dart';
import 'package:built_graphql/src/graphql_response.dart';
import 'package:built_graphql/src/graphql_serializer_plugin.dart';
import 'package:built_value/serializer.dart';
import "package:built_value/standard_json_plugin.dart";

import 'friend.dart';
import 'hero.dart';

part "serializers.g.dart";

@SerializersFor(const [
  Hero,
  Friend,
  GraphQLResponse,
  GraphQLError,
  GraphQLErrorLocation,
])
final Serializers serializers = _$serializers;

final standardSerializers = (serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addPlugin(GraphQLSerializerPlugin())
      ..addBuilderFactory(GraphQLResponse.createFullTypeFor(Friend),
          GraphQLResponse.createBuilder<Friend>())
      ..addBuilderFactory(GraphQLResponse.createFullTypeFor(Hero),
          GraphQLResponse.createBuilder<Hero>()))
    .build();
