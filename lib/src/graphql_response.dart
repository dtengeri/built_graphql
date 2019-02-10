import 'package:built_collection/built_collection.dart';
import 'package:built_graphql/src/graphql_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'graphql_response.g.dart';

abstract class GraphQLResponse<T>
    implements Built<GraphQLResponse<T>, GraphQLResponseBuilder<T>> {
  static Serializer<GraphQLResponse> get serializer =>
      _$graphQLResponseSerializer;

  @nullable
  T get data;

  @nullable
  BuiltList<GraphQLError> get errors;

  factory GraphQLResponse([updates(GraphQLResponseBuilder<T> b)]) =
      _$GraphQLResponse<T>;
  GraphQLResponse._();

  static FullType createFullTypeFor(Type type) =>
      FullType(GraphQLResponse, [FullType(type)]);

  static Function createBuilder<T>() {
    return () => GraphQLResponseBuilder<T>();
  }
}
