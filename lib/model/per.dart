import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/per.dart';
import 'package:github/model/per.dart';

enum Per {
  day._('day'),
  week._('week');

  const Per._(this.value);

  factory Per.fromJson(String json) {
    return Per.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown Per value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Per? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return Per.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
