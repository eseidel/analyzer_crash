import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
@immutable
class Rate-limit {
    Rate-limit(
        { required this.limit,required this.remaining,required this.reset,required this.used,
         }
    );

    factory Rate-limit.fromJson(Map<String, dynamic>
        json) {
        return Rate-limit(
            limit: (json['limit'] as int).toInt() ,
            remaining: (json['remaining'] as int).toInt() ,
            reset: (json['reset'] as int).toInt() ,
            used: (json['used'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rate-limit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Rate-limit.fromJson(json);
    }

    final int  limit;
    final int  remaining;
    final int  reset;
    final int  used;


    Map<String, dynamic> toJson() {
        return {
            'limit': limit,
            'remaining': remaining,
            'reset': reset,
            'used': used,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          limit,
          remaining,
          reset,
          used,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Rate-limit
            && limit == other.limit
            && remaining == other.remaining
            && reset == other.reset
            && used == other.used
        ;
    }
}
