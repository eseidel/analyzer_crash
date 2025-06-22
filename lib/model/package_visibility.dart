import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/package_visibility.dart';

enum PackageVisibility {
  private._('private'),
  public._('public');

  const PackageVisibility._(this.value);

  factory PackageVisibility.fromJson(String json) {
    return PackageVisibility.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown PackageVisibility value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PackageVisibility? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PackageVisibility.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
