import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/commit_stats.dart';

@immutable
class CommitStats {
  CommitStats({this.additions, this.deletions, this.total});

  factory CommitStats.fromJson(Map<String, dynamic> json) {
    return CommitStats(
      additions: (json['additions'] as int?).toInt(),
      deletions: (json['deletions'] as int?).toInt(),
      total: (json['total'] as int?).toInt(),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CommitStats? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CommitStats.fromJson(json);
  }

  final int? additions;
  final int? deletions;
  final int? total;

  Map<String, dynamic> toJson() {
    return {'additions': additions, 'deletions': deletions, 'total': total};
  }

  @override
  int get hashCode => Object.hash(additions, deletions, total);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CommitStats &&
        additions == other.additions &&
        deletions == other.deletions &&
        total == other.total;
  }
}
