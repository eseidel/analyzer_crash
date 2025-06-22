import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
@immutable
class Interaction-limit-response {
    Interaction-limit-response(
        { required this.limit,required this.origin,required this.expires_at,
         }
    );

    factory Interaction-limit-response.fromJson(Map<String, dynamic>
        json) {
        return Interaction-limit-response(
            limit: Interaction-group.fromJson(json['limit'] as String) ,
            origin: json['origin'] as String ,
            expires_at: DateTime.parse(json['expires_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Interaction-limit-response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Interaction-limit-response.fromJson(json);
    }

    final Interaction-group  limit;
    final String  origin;
    final DateTime  expires_at;


    Map<String, dynamic> toJson() {
        return {
            'limit': limit.toJson(),
            'origin': origin,
            'expires_at': expires_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          limit,
          origin,
          expires_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Interaction-limit-response
            && limit == other.limit
            && origin == other.origin
            && expires_at == other.expires_at
        ;
    }
}
