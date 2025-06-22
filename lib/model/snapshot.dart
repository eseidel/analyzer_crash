import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/snapshot.dart';
import 'package:github/model/snapshot_job.dart';
import 'package:github/model/snapshot_detector.dart';
import 'package:github/model/snapshot.dart';
import 'package:github/model/snapshot_job.dart';
import 'package:github/model/snapshot_detector.dart';

@immutable
class Snapshot {
  Snapshot({
    required this.version,
    required this.job,
    required this.sha,
    required this.ref,
    required this.detector,
    this.metadata,
    this.manifests,
    required this.scanned,
  });

  factory Snapshot.fromJson(Map<String, dynamic> json) {
    return Snapshot(
      version: (json['version'] as int).toInt(),
      job: SnapshotJob.fromJson(json['job'] as Map<String, dynamic>),
      sha: json['sha'] as String,
      ref: json['ref'] as String,
      detector: SnapshotDetector.fromJson(
        json['detector'] as Map<String, dynamic>,
      ),
      metadata: json['metadata']
          .map(
            (key, value) => MapEntry(key, Metadata.fromJson(value as dynamic)),
          )
          .toMap(),
      manifests: json['manifests']
          .map(
            (key, value) =>
                MapEntry(key, Manifest.fromJson(value as Map<String, dynamic>)),
          )
          .toMap(),
      scanned: DateTime.parse(json['scanned'] as String),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Snapshot? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Snapshot.fromJson(json);
  }

  final int version;
  final SnapshotJob job;
  final String sha;
  final String ref;
  final SnapshotDetector detector;
  final Map<String, Metadata>? metadata;
  final Map<String, Manifest>? manifests;
  final DateTime scanned;

  Map<String, dynamic> toJson() {
    return {
      'version': version,
      'job': job.toJson(),
      'sha': sha,
      'ref': ref,
      'detector': detector.toJson(),
      'metadata': metadata
          .map((key, value) => MapEntry(key, value.toJson()))
          .toMap(),
      'manifests': manifests
          .map((key, value) => MapEntry(key, value.toJson()))
          .toMap(),
      'scanned': scanned.toIso8601String(),
    };
  }

  @override
  int get hashCode => Object.hash(
    version,
    job,
    sha,
    ref,
    detector,
    metadata,
    manifests,
    scanned,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Snapshot &&
        version == other.version &&
        job == other.job &&
        sha == other.sha &&
        ref == other.ref &&
        detector == other.detector &&
        mapsEqual(metadata, other.metadata) &&
        mapsEqual(manifests, other.manifests) &&
        scanned == other.scanned;
  }
}
