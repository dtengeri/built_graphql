// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GraphQLError> _$graphQLErrorSerializer =
    new _$GraphQLErrorSerializer();

class _$GraphQLErrorSerializer implements StructuredSerializer<GraphQLError> {
  @override
  final Iterable<Type> types = const [GraphQLError, _$GraphQLError];
  @override
  final String wireName = 'GraphQLError';

  @override
  Iterable serialize(Serializers serializers, GraphQLError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.locations != null) {
      result
        ..add('locations')
        ..add(serializers.serialize(object.locations,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GraphQLErrorLocation)])));
    }
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.extensions != null) {
      result
        ..add('extensions')
        ..add(serializers.serialize(object.extensions,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(String)])));
    }

    return result;
  }

  @override
  GraphQLError deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GraphQLErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locations':
          result.locations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GraphQLErrorLocation)]))
              as BuiltList);
          break;
        case 'path':
          result.path.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'extensions':
          result.extensions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(String)
              ])) as BuiltMap);
          break;
      }
    }

    return result.build();
  }
}

class _$GraphQLError extends GraphQLError {
  @override
  final String message;
  @override
  final BuiltList<GraphQLErrorLocation> locations;
  @override
  final BuiltList<String> path;
  @override
  final BuiltMap<String, String> extensions;

  factory _$GraphQLError([void updates(GraphQLErrorBuilder b)]) =>
      (new GraphQLErrorBuilder()..update(updates)).build();

  _$GraphQLError._({this.message, this.locations, this.path, this.extensions})
      : super._();

  @override
  GraphQLError rebuild(void updates(GraphQLErrorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GraphQLErrorBuilder toBuilder() => new GraphQLErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GraphQLError &&
        message == other.message &&
        locations == other.locations &&
        path == other.path &&
        extensions == other.extensions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, message.hashCode), locations.hashCode), path.hashCode),
        extensions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GraphQLError')
          ..add('message', message)
          ..add('locations', locations)
          ..add('path', path)
          ..add('extensions', extensions))
        .toString();
  }
}

class GraphQLErrorBuilder
    implements Builder<GraphQLError, GraphQLErrorBuilder> {
  _$GraphQLError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ListBuilder<GraphQLErrorLocation> _locations;
  ListBuilder<GraphQLErrorLocation> get locations =>
      _$this._locations ??= new ListBuilder<GraphQLErrorLocation>();
  set locations(ListBuilder<GraphQLErrorLocation> locations) =>
      _$this._locations = locations;

  ListBuilder<String> _path;
  ListBuilder<String> get path => _$this._path ??= new ListBuilder<String>();
  set path(ListBuilder<String> path) => _$this._path = path;

  MapBuilder<String, String> _extensions;
  MapBuilder<String, String> get extensions =>
      _$this._extensions ??= new MapBuilder<String, String>();
  set extensions(MapBuilder<String, String> extensions) =>
      _$this._extensions = extensions;

  GraphQLErrorBuilder();

  GraphQLErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _locations = _$v.locations?.toBuilder();
      _path = _$v.path?.toBuilder();
      _extensions = _$v.extensions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GraphQLError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GraphQLError;
  }

  @override
  void update(void updates(GraphQLErrorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GraphQLError build() {
    _$GraphQLError _$result;
    try {
      _$result = _$v ??
          new _$GraphQLError._(
              message: message,
              locations: _locations?.build(),
              path: _path?.build(),
              extensions: _extensions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'locations';
        _locations?.build();
        _$failedField = 'path';
        _path?.build();
        _$failedField = 'extensions';
        _extensions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GraphQLError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
