import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_package_type.dart';

enum PackagePackageType {
  npm._('npm'),
  maven._('maven'),
  rubygems._('rubygems'),
  docker._('docker'),
  nuget._('nuget'),
  container._('container');

  const PackagePackageType._(this.value);

  factory PackagePackageType.fromJson(String json) {
    return PackagePackageType.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown PackagePackageType value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PackagePackageType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PackagePackageType.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
