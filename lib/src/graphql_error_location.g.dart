// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_error_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GraphQLErrorLocation> _$graphQLErrorLocationSerializer =
    new _$GraphQLErrorLocationSerializer();

class _$GraphQLErrorLocationSerializer
    implements StructuredSerializer<GraphQLErrorLocation> {
  @override
  final Iterable<Type> types = const [
    GraphQLErrorLocation,
    _$GraphQLErrorLocation
  ];
  @override
  final String wireName = 'GraphQLErrorLocation';

  @override
  Iterable serialize(Serializers serializers, GraphQLErrorLocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.line != null) {
      result
        ..add('line')
        ..add(serializers.serialize(object.line,
            specifiedType: const FullType(int)));
    }
    if (object.column != null) {
      result
        ..add('column')
        ..add(serializers.serialize(object.column,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  GraphQLErrorLocation deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GraphQLErrorLocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'line':
          result.line = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'column':
          result.column = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GraphQLErrorLocation extends GraphQLErrorLocation {
  @override
  final int line;
  @override
  final int column;

  factory _$GraphQLErrorLocation(
          [void updates(GraphQLErrorLocationBuilder b)]) =>
      (new GraphQLErrorLocationBuilder()..update(updates)).build();

  _$GraphQLErrorLocation._({this.line, this.column}) : super._();

  @override
  GraphQLErrorLocation rebuild(void updates(GraphQLErrorLocationBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GraphQLErrorLocationBuilder toBuilder() =>
      new GraphQLErrorLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GraphQLErrorLocation &&
        line == other.line &&
        column == other.column;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, line.hashCode), column.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GraphQLErrorLocation')
          ..add('line', line)
          ..add('column', column))
        .toString();
  }
}

class GraphQLErrorLocationBuilder
    implements Builder<GraphQLErrorLocation, GraphQLErrorLocationBuilder> {
  _$GraphQLErrorLocation _$v;

  int _line;
  int get line => _$this._line;
  set line(int line) => _$this._line = line;

  int _column;
  int get column => _$this._column;
  set column(int column) => _$this._column = column;

  GraphQLErrorLocationBuilder();

  GraphQLErrorLocationBuilder get _$this {
    if (_$v != null) {
      _line = _$v.line;
      _column = _$v.column;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GraphQLErrorLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GraphQLErrorLocation;
  }

  @override
  void update(void updates(GraphQLErrorLocationBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GraphQLErrorLocation build() {
    final _$result =
        _$v ?? new _$GraphQLErrorLocation._(line: line, column: column);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
