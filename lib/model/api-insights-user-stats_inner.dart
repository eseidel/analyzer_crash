import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/api-insights-user-stats_inner.dart';
import 'package:github/model/api-insights-user-stats_inner.dart';
@immutable
class Api-insights-user-statsInner {
    Api-insights-user-statsInner(
        {  this.actor_type, this.actor_name, this.actor_id, this.integration_id, this.oauth_application_id, this.total_request_count, this.rate_limited_request_count, this.last_rate_limited_timestamp, this.last_request_timestamp,
         }
    );

    factory Api-insights-user-statsInner.fromJson(Map<String, dynamic>
        json) {
        return Api-insights-user-statsInner(
            actor_type: json['actor_type'] as String? ,
            actor_name: json['actor_name'] as String? ,
            actor_id: (json['actor_id'] as int?).toInt() ,
            integration_id: (json['integration_id'] as int?).toInt() ,
            oauth_application_id: (json['oauth_application_id'] as int?).toInt() ,
            total_request_count: (json['total_request_count'] as int?).toInt() ,
            rate_limited_request_count: (json['rate_limited_request_count'] as int?).toInt() ,
            last_rate_limited_timestamp: json['last_rate_limited_timestamp'] as String? ,
            last_request_timestamp: json['last_request_timestamp'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Api-insights-user-statsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Api-insights-user-statsInner.fromJson(json);
    }

    final  String? actor_type;
    final  String? actor_name;
    final  int? actor_id;
    final  int? integration_id;
    final  int? oauth_application_id;
    final  int? total_request_count;
    final  int? rate_limited_request_count;
    final  String? last_rate_limited_timestamp;
    final  String? last_request_timestamp;


    Map<String, dynamic> toJson() {
        return {
            'actor_type': actor_type,
            'actor_name': actor_name,
            'actor_id': actor_id,
            'integration_id': integration_id,
            'oauth_application_id': oauth_application_id,
            'total_request_count': total_request_count,
            'rate_limited_request_count': rate_limited_request_count,
            'last_rate_limited_timestamp': last_rate_limited_timestamp,
            'last_request_timestamp': last_request_timestamp,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          actor_type,
          actor_name,
          actor_id,
          integration_id,
          oauth_application_id,
          total_request_count,
          rate_limited_request_count,
          last_rate_limited_timestamp,
          last_request_timestamp,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Api-insights-user-statsInner
            && actor_type == other.actor_type
            && actor_name == other.actor_name
            && actor_id == other.actor_id
            && integration_id == other.integration_id
            && oauth_application_id == other.oauth_application_id
            && total_request_count == other.total_request_count
            && rate_limited_request_count == other.rate_limited_request_count
            && last_rate_limited_timestamp == other.last_rate_limited_timestamp
            && last_request_timestamp == other.last_request_timestamp
        ;
    }
}
