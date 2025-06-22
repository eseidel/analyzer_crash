import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/import_status.dart';
import 'package:github/model/import_status.dart';

enum ImportStatus {
  auth._('auth'),
  error._('error'),
  none._('none'),
  detecting._('detecting'),
  choose._('choose'),
  authFailed._('auth_failed'),
  importing._('importing'),
  mapping._('mapping'),
  waitingToPush._('waiting_to_push'),
  pushing._('pushing'),
  complete._('complete'),
  setup._('setup'),
  unknown._('unknown'),
  detectionFoundMultiple._('detection_found_multiple'),
  detectionFoundNothing._('detection_found_nothing'),
  detectionNeedsAuth._('detection_needs_auth');

  const ImportStatus._(this.value);

  factory ImportStatus.fromJson(String json) {
    return ImportStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown ImportStatus value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ImportStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ImportStatus.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
