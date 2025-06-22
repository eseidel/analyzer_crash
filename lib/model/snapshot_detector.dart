import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/snapshot_detector.dart';
import 'package:github/model/snapshot_detector.dart';

@immutable
class SnapshotDetector {
  SnapshotDetector({
    required this.name,
    required this.version,
    required this.url,
  });

  factory SnapshotDetector.fromJson(Map<String, dynamic> json) {
    return SnapshotDetector(
      name: json['name'] as String,
      version: json['version'] as String,
      url: json['url'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SnapshotDetector? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return SnapshotDetector.fromJson(json);
  }

  final String name;
  final String version;
  final String url;

  Map<String, dynamic> toJson() {
    return {'name': name, 'version': version, 'url': url};
  }

  @override
  int get hashCode => Object.hash(name, version, url);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SnapshotDetector &&
        name == other.name &&
        version == other.version &&
        url == other.url;
  }
}
