import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/api-insights-summary-stats.dart';
import 'package:github/model/api-insights-summary-stats.dart';
@immutable
class Api-insights-summary-stats {
    Api-insights-summary-stats(
        {  this.total_request_count, this.rate_limited_request_count,
         }
    );

    factory Api-insights-summary-stats.fromJson(Map<String, dynamic>
        json) {
        return Api-insights-summary-stats(
            total_request_count: (json['total_request_count'] as int?).toInt() ,
            rate_limited_request_count: (json['rate_limited_request_count'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Api-insights-summary-stats? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Api-insights-summary-stats.fromJson(json);
    }

    final  int? total_request_count;
    final  int? rate_limited_request_count;


    Map<String, dynamic> toJson() {
        return {
            'total_request_count': total_request_count,
            'rate_limited_request_count': rate_limited_request_count,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_request_count,
          rate_limited_request_count,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Api-insights-summary-stats
            && total_request_count == other.total_request_count
            && rate_limited_request_count == other.rate_limited_request_count
        ;
    }
}
