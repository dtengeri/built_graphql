import 'dart:convert';
import 'package:built_graphql/built_graphql.dart';

import 'hero.dart';
import 'serializers.dart';

void main() {
  final String jsonStr = '''
    {
      "data": {
        "hero": {
          "name": "R2-D2",
          "heroFriends": [
            {
              "id": "1000",
              "name": "Luke Skywalker"
            },
            {
              "id": "1002",
              "name": null
            },
            {
              "id": "1003",
              "name": "Leia Organa"
            }
          ]
        }
      }
    }
    ''';
  final GraphQLResponse<Hero> response = standardSerializers.deserialize(
      json.decode(jsonStr),
      specifiedType: GraphQLResponse.createFullTypeFor(Hero));

  print(response);
}
