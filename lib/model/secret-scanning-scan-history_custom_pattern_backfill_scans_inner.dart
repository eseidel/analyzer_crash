import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-scan-history_custom_pattern_backfill_scans_inner.dart';
import 'package:github/model/secret-scanning-scan-history_custom_pattern_backfill_scans_inner.dart';
@immutable
class Secret-scanning-scan-historyCustomPatternBackfillScansInner {
    Secret-scanning-scan-historyCustomPatternBackfillScansInner(
        {  this.type, this.status, this.completed_at, this.started_at, this.pattern_name, this.pattern_scope,
         }
    );

    factory Secret-scanning-scan-historyCustomPatternBackfillScansInner.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-scan-historyCustomPatternBackfillScansInner(
            type: json['type'] as String? ,
            status: json['status'] as String? ,
            completed_at: maybeParseDateTime(json['completed_at'] as String?) ,
            started_at: maybeParseDateTime(json['started_at'] as String?) ,
            pattern_name: json['pattern_name'] as String? ,
            pattern_scope: json['pattern_scope'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-scan-historyCustomPatternBackfillScansInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-scan-historyCustomPatternBackfillScansInner.fromJson(json);
    }

    final  String? type;
    final  String? status;
    final  DateTime? completed_at;
    final  DateTime? started_at;
    final  String? pattern_name;
    final  String? pattern_scope;


    Map<String, dynamic> toJson() {
        return {
            'type': type,
            'status': status,
            'completed_at': completed_at?.toIso8601String(),
            'started_at': started_at?.toIso8601String(),
            'pattern_name': pattern_name,
            'pattern_scope': pattern_scope,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          status,
          completed_at,
          started_at,
          pattern_name,
          pattern_scope,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-scan-historyCustomPatternBackfillScansInner
            && type == other.type
            && status == other.status
            && completed_at == other.completed_at
            && started_at == other.started_at
            && pattern_name == other.pattern_name
            && pattern_scope == other.pattern_scope
        ;
    }
}
