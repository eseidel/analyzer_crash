import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/interaction-limit.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interaction-expiry.dart';
import 'package:github/model/interaction-limit.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interaction-expiry.dart';
@immutable
class Interaction-limit {
    Interaction-limit(
        { required this.limit, this.expiry,
         }
    );

    factory Interaction-limit.fromJson(Map<String, dynamic>
        json) {
        return Interaction-limit(
            limit: Interaction-group.fromJson(json['limit'] as String) ,
            expiry: Interaction-expiry.maybeFromJson(json['expiry'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Interaction-limit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Interaction-limit.fromJson(json);
    }

    final Interaction-group  limit;
    final  Interaction-expiry? expiry;


    Map<String, dynamic> toJson() {
        return {
            'limit': limit.toJson(),
            'expiry': expiry?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          limit,
          expiry,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Interaction-limit
            && limit == other.limit
            && expiry == other.expiry
        ;
    }
}
