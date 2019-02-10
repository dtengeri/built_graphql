# Built Value for GraphQL responses

A library that contains basic built_value classes to help deserializing GraphQL responses.

Thanks for the great [built_value](https://github.com/google/built_value.dart) library from Google.

## Usage

The [example](example) directory contains a Serializer definition and 2 basic classes.

First, add all of your classes to your serializer in the `@SerializersFor`.
Then you have to add the `GraphQLSerializerPlugin` and `StandardJsonPlugin`.

For each type that you want to deserialize with `GraphQLResponse`, the serializer must contain a builder factory definition. Here is an example for `Hero` and `Friend` classes:

```dart
final standardSerializers = (serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addPlugin(GraphQLSerializerPlugin())
      ..addBuilderFactory(GraphQLResponse.createFullTypeFor(Friend),
          GraphQLResponse.createBuilder<Friend>())
      ..addBuilderFactory(GraphQLResponse.createFullTypeFor(Hero),
          GraphQLResponse.createBuilder<Hero>()))
    .build();
```

You can deserialize a `Hero` from GraphQL response by
```dart
final GraphQLResponse<Hero> response = standardSerializers.deserialize(
        json.decode(jsonStr),
        specifiedType: GraphQLResponse.createFullTypeFor(Hero));

final Hero hero = response.data;
```

You can find more examples in the [tests](test/built_graphql_test.dart).

## Limitations

The library assumes that the name of the class, that will hold your data, and the key in the response are the same.

For the `Hero` class, the JSON response must have a `hero` key:

```json
{
  "data": {
    "hero": {
      ...
    }
  }
}
```

## Features and bugs

The library supports only deserialization of the JSON responses. Serialization of the objects won't give the same result.

Please file feature requests and bugs at the [issue tracker](https://www.github.com/dtengeri/built_graphql).