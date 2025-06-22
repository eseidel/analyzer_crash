import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/snapshot_job.dart';
import 'package:github/model/snapshot_job.dart';

@immutable
class SnapshotJob {
  SnapshotJob({required this.id, required this.correlator, this.html_url});

  factory SnapshotJob.fromJson(Map<String, dynamic> json) {
    return SnapshotJob(
      id: json['id'] as String,
      correlator: json['correlator'] as String,
      html_url: json['html_url'] as String?,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SnapshotJob? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return SnapshotJob.fromJson(json);
  }

  final String id;
  final String correlator;
  final String? html_url;

  Map<String, dynamic> toJson() {
    return {'id': id, 'correlator': correlator, 'html_url': html_url};
  }

  @override
  int get hashCode => Object.hash(id, correlator, html_url);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SnapshotJob &&
        id == other.id &&
        correlator == other.correlator &&
        html_url == other.html_url;
  }
}
