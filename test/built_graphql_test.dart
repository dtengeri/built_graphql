import "dart:convert";
import 'package:built_graphql/built_graphql.dart';
import "package:test/test.dart";

import '../example/hero.dart';
import '../example/friend.dart';
import '../example/serializers.dart';

void main() {
  test('Deserialize a Hero', () {
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
    expect(response.data.name, equals("R2-D2"));
    expect(response.data.heroFriends.length, equals(3));
    expect(response.data.heroFriends.first.id, equals("1000"));
    expect(response.data.heroFriends.first.name, equals("Luke Skywalker"));
  });
  test('Deserialize a Hero and errors', () {
    final String jsonStr = '''
    {
      "errors": [
        {
          "message": "Name for character with ID 1002 could not be fetched.",
          "locations": [ { "line": 6, "column": 7 } ],
          "path": [ "hero", "heroFriends", 1, "name" ]
        }
      ],
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

    expect(response.data.name, equals("R2-D2"));
    expect(response.data.heroFriends.length, equals(3));
    expect(response.data.heroFriends.first.id, equals("1000"));
    expect(response.data.heroFriends.first.name, equals("Luke Skywalker"));
    expect(response.errors.length, equals(1));
    expect(response.errors[0].message,
        equals("Name for character with ID 1002 could not be fetched."));
    expect(response.errors[0].locations.length, equals(1));
    expect(response.errors[0].locations[0].line, equals(6));
    expect(response.errors[0].locations[0].column, equals(7));
    expect(
        response.errors[0].path, equals(["hero", "heroFriends", "1", "name"]));
  });

  test('Deserialize errors', () {
    final String jsonStr = '''
    {
      "errors": [
        {
          "message": "Name for character with ID 1002 could not be fetched.",
          "locations": [ { "line": 6, "column": 7 } ],
          "path": [ "hero", "heroFriends", 1, "name" ],
          "extensions": {
            "code": "CAN_NOT_FETCH_BY_ID",
            "timestamp": "Fri Feb 9 14:33:09 UTC 2018"
          }
        }
      ]
    }
    ''';
    final GraphQLResponse<Hero> response = standardSerializers.deserialize(
        json.decode(jsonStr),
        specifiedType: GraphQLResponse.createFullTypeFor(Hero));

    expect(response.errors.length, equals(1));
    expect(response.errors[0].message,
        equals("Name for character with ID 1002 could not be fetched."));
    expect(response.errors[0].locations.length, equals(1));
    expect(response.errors[0].locations[0].line, equals(6));
    expect(response.errors[0].locations[0].column, equals(7));
    expect(
        response.errors[0].path, equals(["hero", "heroFriends", "1", "name"]));
    expect(
        response.errors[0].extensions["code"], equals("CAN_NOT_FETCH_BY_ID"));
    expect(response.errors[0].extensions["timestamp"],
        equals("Fri Feb 9 14:33:09 UTC 2018"));
  });

  test('Deserialize a Friend from multiple results', () {
    final String jsonStr = '''
    {
      "data": {
        "friend": {
          "id": "1000",
          "name": "Luke Skywalker"
        },
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
    final GraphQLResponse<Friend> response = standardSerializers.deserialize(
        json.decode(jsonStr),
        specifiedType: GraphQLResponse.createFullTypeFor(Friend));

    expect(response.data.id, equals("1000"));
    expect(response.data.name, equals("Luke Skywalker"));
  });
}
