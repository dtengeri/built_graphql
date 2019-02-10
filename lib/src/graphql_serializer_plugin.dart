import 'package:built_graphql/built_graphql.dart';
import 'package:built_graphql/src/graphql_error.dart';
import 'package:built_value/serializer.dart';

class GraphQLSerializerPlugin implements SerializerPlugin {
  @override
  Object afterDeserialize(Object object, FullType specifiedType) {
    return object;
  }

  @override
  Object afterSerialize(Object object, FullType specifiedType) {
    return object;
  }

  @override
  Object beforeDeserialize(Object object, FullType specifiedType) {
    if (specifiedType.root == GraphQLResponse && object is List) {
      final idx = object.indexOf("data");
      if (idx > -1 &&
          object[idx + 1] is Map &&
          specifiedType.parameters.length == 1) {
        final key = specifiedType.parameters.first.toString().toLowerCase();
        if (object[idx + 1][key] is Map) {
          object[idx + 1] = object[idx + 1][key];
        }
      }
    }
    if (specifiedType == const FullType(GraphQLError) && object is List) {
      final idx = object.indexOf("path");
      if (idx > -1 && object[idx + 1] is List) {
        object[idx + 1] = List.of(object[idx + 1].map((v) => "$v"));
      }
    }
    return object;
  }

  @override
  Object beforeSerialize(Object object, FullType specifiedType) {
    return object;
  }
}
