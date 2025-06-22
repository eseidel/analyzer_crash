import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_state.dart';

enum CodespaceState {
  unknown._('Unknown'),
  created._('Created'),
  queued._('Queued'),
  provisioning._('Provisioning'),
  available._('Available'),
  awaiting._('Awaiting'),
  unavailable._('Unavailable'),
  deleted._('Deleted'),
  moved._('Moved'),
  shutdown._('Shutdown'),
  archived._('Archived'),
  starting._('Starting'),
  shuttingdown._('ShuttingDown'),
  failed._('Failed'),
  exporting._('Exporting'),
  updating._('Updating'),
  rebuilding._('Rebuilding');

  const CodespaceState._(this.value);

  factory CodespaceState.fromJson(String json) {
    return CodespaceState.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown CodespaceState value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespaceState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodespaceState.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
