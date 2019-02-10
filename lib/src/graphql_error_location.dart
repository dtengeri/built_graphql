import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'graphql_error_location.g.dart';

abstract class GraphQLErrorLocation
    implements Built<GraphQLErrorLocation, GraphQLErrorLocationBuilder> {
  static Serializer<GraphQLErrorLocation> get serializer =>
      _$graphQLErrorLocationSerializer;

  @nullable
  int get line;

  @nullable
  int get column;

  factory GraphQLErrorLocation([updates(GraphQLErrorLocationBuilder b)]) =
      _$GraphQLErrorLocation;
  GraphQLErrorLocation._();
}
