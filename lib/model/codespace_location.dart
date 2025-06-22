import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_location.dart';

enum CodespaceLocation {
  eastus._('EastUs'),
  southeastasia._('SouthEastAsia'),
  westeurope._('WestEurope'),
  westus2._('WestUs2');

  const CodespaceLocation._(this.value);

  factory CodespaceLocation.fromJson(String json) {
    return CodespaceLocation.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown CodespaceLocation value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespaceLocation? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodespaceLocation.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
