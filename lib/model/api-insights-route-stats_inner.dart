import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/api-insights-route-stats_inner.dart';
import 'package:github/model/api-insights-route-stats_inner.dart';
@immutable
class Api-insights-route-statsInner {
    Api-insights-route-statsInner(
        {  this.http_method, this.api_route, this.total_request_count, this.rate_limited_request_count, this.last_rate_limited_timestamp, this.last_request_timestamp,
         }
    );

    factory Api-insights-route-statsInner.fromJson(Map<String, dynamic>
        json) {
        return Api-insights-route-statsInner(
            http_method: json['http_method'] as String? ,
            api_route: json['api_route'] as String? ,
            total_request_count: (json['total_request_count'] as int?).toInt() ,
            rate_limited_request_count: (json['rate_limited_request_count'] as int?).toInt() ,
            last_rate_limited_timestamp: json['last_rate_limited_timestamp'] as String? ,
            last_request_timestamp: json['last_request_timestamp'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Api-insights-route-statsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Api-insights-route-statsInner.fromJson(json);
    }

    final  String? http_method;
    final  String? api_route;
    final  int? total_request_count;
    final  int? rate_limited_request_count;
    final  String? last_rate_limited_timestamp;
    final  String? last_request_timestamp;


    Map<String, dynamic> toJson() {
        return {
            'http_method': http_method,
            'api_route': api_route,
            'total_request_count': total_request_count,
            'rate_limited_request_count': rate_limited_request_count,
            'last_rate_limited_timestamp': last_rate_limited_timestamp,
            'last_request_timestamp': last_request_timestamp,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          http_method,
          api_route,
          total_request_count,
          rate_limited_request_count,
          last_rate_limited_timestamp,
          last_request_timestamp,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Api-insights-route-statsInner
            && http_method == other.http_method
            && api_route == other.api_route
            && total_request_count == other.total_request_count
            && rate_limited_request_count == other.rate_limited_request_count
            && last_rate_limited_timestamp == other.last_rate_limited_timestamp
            && last_request_timestamp == other.last_request_timestamp
        ;
    }
}
