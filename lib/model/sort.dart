import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/sort.dart';
import 'package:github/model/sort.dart';

enum Sort {
  created._('created'),
  updated._('updated');

  const Sort._(this.value);

  factory Sort.fromJson(String json) {
    return Sort.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown Sort value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Sort? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return Sort.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
