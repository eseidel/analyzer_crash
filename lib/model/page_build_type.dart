import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/page_build_type.dart';
import 'package:github/model/page_build_type.dart';

enum PageBuildType {
  legacy._('legacy'),
  workflow._('workflow');

  const PageBuildType._(this.value);

  factory PageBuildType.fromJson(String json) {
    return PageBuildType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown PageBuildType value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PageBuildType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PageBuildType.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
