import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/api-insights-time-stats_inner.dart';
import 'package:github/model/api-insights-time-stats_inner.dart';
@immutable
class Api-insights-time-statsInner {
    Api-insights-time-statsInner(
        {  this.timestamp, this.total_request_count, this.rate_limited_request_count,
         }
    );

    factory Api-insights-time-statsInner.fromJson(Map<String, dynamic>
        json) {
        return Api-insights-time-statsInner(
            timestamp: json['timestamp'] as String? ,
            total_request_count: (json['total_request_count'] as int?).toInt() ,
            rate_limited_request_count: (json['rate_limited_request_count'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Api-insights-time-statsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Api-insights-time-statsInner.fromJson(json);
    }

    final  String? timestamp;
    final  int? total_request_count;
    final  int? rate_limited_request_count;


    Map<String, dynamic> toJson() {
        return {
            'timestamp': timestamp,
            'total_request_count': total_request_count,
            'rate_limited_request_count': rate_limited_request_count,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          timestamp,
          total_request_count,
          rate_limited_request_count,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Api-insights-time-statsInner
            && timestamp == other.timestamp
            && total_request_count == other.total_request_count
            && rate_limited_request_count == other.rate_limited_request_count
        ;
    }
}
