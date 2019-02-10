import 'package:built_collection/built_collection.dart';
import 'package:built_graphql/src/graphql_error_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'graphql_error.g.dart';

abstract class GraphQLError
    implements Built<GraphQLError, GraphQLErrorBuilder> {
  static Serializer<GraphQLError> get serializer => _$graphQLErrorSerializer;

  @nullable
  String get message;

  @nullable
  BuiltList<GraphQLErrorLocation> get locations;

  @nullable
  BuiltList<String> get path;

  @nullable
  BuiltMap<String, String> get extensions;

  factory GraphQLError([updates(GraphQLErrorBuilder b)]) = _$GraphQLError;
  GraphQLError._();
}
