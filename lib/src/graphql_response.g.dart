// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GraphQLResponse> _$graphQLResponseSerializer =
    new _$GraphQLResponseSerializer();

class _$GraphQLResponseSerializer
    implements StructuredSerializer<GraphQLResponse> {
  @override
  final Iterable<Type> types = const [GraphQLResponse, _$GraphQLResponse];
  @override
  final String wireName = 'GraphQLResponse';

  @override
  Iterable serialize(Serializers serializers, GraphQLResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data, specifiedType: parameterT));
    }
    if (object.errors != null) {
      result
        ..add('errors')
        ..add(serializers.serialize(object.errors,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GraphQLError)])));
    }

    return result;
  }

  @override
  GraphQLResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new GraphQLResponseBuilder<Object>()
        : serializers.newBuilder(specifiedType) as GraphQLResponseBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data =
              serializers.deserialize(value, specifiedType: parameterT);
          break;
        case 'errors':
          result.errors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GraphQLError)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$GraphQLResponse<T> extends GraphQLResponse<T> {
  @override
  final T data;
  @override
  final BuiltList<GraphQLError> errors;

  factory _$GraphQLResponse([void updates(GraphQLResponseBuilder<T> b)]) =>
      (new GraphQLResponseBuilder<T>()..update(updates)).build();

  _$GraphQLResponse._({this.data, this.errors}) : super._() {
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('GraphQLResponse', 'T');
    }
  }

  @override
  GraphQLResponse<T> rebuild(void updates(GraphQLResponseBuilder<T> b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GraphQLResponseBuilder<T> toBuilder() =>
      new GraphQLResponseBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GraphQLResponse &&
        data == other.data &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), errors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GraphQLResponse')
          ..add('data', data)
          ..add('errors', errors))
        .toString();
  }
}

class GraphQLResponseBuilder<T>
    implements Builder<GraphQLResponse<T>, GraphQLResponseBuilder<T>> {
  _$GraphQLResponse<T> _$v;

  T _data;
  T get data => _$this._data;
  set data(T data) => _$this._data = data;

  ListBuilder<GraphQLError> _errors;
  ListBuilder<GraphQLError> get errors =>
      _$this._errors ??= new ListBuilder<GraphQLError>();
  set errors(ListBuilder<GraphQLError> errors) => _$this._errors = errors;

  GraphQLResponseBuilder();

  GraphQLResponseBuilder<T> get _$this {
    if (_$v != null) {
      _data = _$v.data;
      _errors = _$v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GraphQLResponse<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GraphQLResponse<T>;
  }

  @override
  void update(void updates(GraphQLResponseBuilder<T> b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GraphQLResponse<T> build() {
    _$GraphQLResponse<T> _$result;
    try {
      _$result = _$v ??
          new _$GraphQLResponse<T>._(data: data, errors: _errors?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GraphQLResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
