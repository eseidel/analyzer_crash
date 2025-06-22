import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/installation_repository_selection.dart';

enum InstallationRepositorySelection {
  all._('all'),
  selected._('selected');

  const InstallationRepositorySelection._(this.value);

  factory InstallationRepositorySelection.fromJson(String json) {
    return InstallationRepositorySelection.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown InstallationRepositorySelection value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static InstallationRepositorySelection? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return InstallationRepositorySelection.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
