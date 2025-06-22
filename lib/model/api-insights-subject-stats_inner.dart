import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/api-insights-subject-stats_inner.dart';
import 'package:github/model/api-insights-subject-stats_inner.dart';
@immutable
class Api-insights-subject-statsInner {
    Api-insights-subject-statsInner(
        {  this.subject_type, this.subject_name, this.subject_id, this.total_request_count, this.rate_limited_request_count, this.last_rate_limited_timestamp, this.last_request_timestamp,
         }
    );

    factory Api-insights-subject-statsInner.fromJson(Map<String, dynamic>
        json) {
        return Api-insights-subject-statsInner(
            subject_type: json['subject_type'] as String? ,
            subject_name: json['subject_name'] as String? ,
            subject_id: (json['subject_id'] as int?).toInt() ,
            total_request_count: (json['total_request_count'] as int?).toInt() ,
            rate_limited_request_count: (json['rate_limited_request_count'] as int?).toInt() ,
            last_rate_limited_timestamp: json['last_rate_limited_timestamp'] as String? ,
            last_request_timestamp: json['last_request_timestamp'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Api-insights-subject-statsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Api-insights-subject-statsInner.fromJson(json);
    }

    final  String? subject_type;
    final  String? subject_name;
    final  int? subject_id;
    final  int? total_request_count;
    final  int? rate_limited_request_count;
    final  String? last_rate_limited_timestamp;
    final  String? last_request_timestamp;


    Map<String, dynamic> toJson() {
        return {
            'subject_type': subject_type,
            'subject_name': subject_name,
            'subject_id': subject_id,
            'total_request_count': total_request_count,
            'rate_limited_request_count': rate_limited_request_count,
            'last_rate_limited_timestamp': last_rate_limited_timestamp,
            'last_request_timestamp': last_request_timestamp,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          subject_type,
          subject_name,
          subject_id,
          total_request_count,
          rate_limited_request_count,
          last_rate_limited_timestamp,
          last_request_timestamp,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Api-insights-subject-statsInner
            && subject_type == other.subject_type
            && subject_name == other.subject_name
            && subject_id == other.subject_id
            && total_request_count == other.total_request_count
            && rate_limited_request_count == other.rate_limited_request_count
            && last_rate_limited_timestamp == other.last_rate_limited_timestamp
            && last_request_timestamp == other.last_request_timestamp
        ;
    }
}
