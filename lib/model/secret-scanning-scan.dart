import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan.dart';
@immutable
class Secret-scanning-scan {
    Secret-scanning-scan(
        {  this.type, this.status, this.completed_at, this.started_at,
         }
    );

    factory Secret-scanning-scan.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-scan(
            type: json['type'] as String? ,
            status: json['status'] as String? ,
            completed_at: maybeParseDateTime(json['completed_at'] as String?) ,
            started_at: maybeParseDateTime(json['started_at'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-scan? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-scan.fromJson(json);
    }

    final  String? type;
    final  String? status;
    final  DateTime? completed_at;
    final  DateTime? started_at;


    Map<String, dynamic> toJson() {
        return {
            'type': type,
            'status': status,
            'completed_at': completed_at?.toIso8601String(),
            'started_at': started_at?.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          status,
          completed_at,
          started_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-scan
            && type == other.type
            && status == other.status
            && completed_at == other.completed_at
            && started_at == other.started_at
        ;
    }
}
