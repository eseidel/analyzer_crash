import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/direction.dart';

enum Direction {
  asc._('asc'),
  desc._('desc');

  const Direction._(this.value);

  factory Direction.fromJson(String json) {
    return Direction.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown Direction value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Direction? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return Direction.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
