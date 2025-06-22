import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/page_status.dart';
import 'package:github/model/page_status.dart';

enum PageStatus {
  built._('built'),
  building._('building'),
  errored._('errored');

  const PageStatus._(this.value);

  factory PageStatus.fromJson(String json) {
    return PageStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown PageStatus value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PageStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PageStatus.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
