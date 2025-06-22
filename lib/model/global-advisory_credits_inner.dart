import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/global-advisory_credits_inner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/global-advisory_credits_inner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
@immutable
class Global-advisoryCreditsInner {
    Global-advisoryCreditsInner(
        { required this.user,required this.type,
         }
    );

    factory Global-advisoryCreditsInner.fromJson(Map<String, dynamic>
        json) {
        return Global-advisoryCreditsInner(
            user: Simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            type: Security-advisory-credit-types.fromJson(json['type'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Global-advisoryCreditsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Global-advisoryCreditsInner.fromJson(json);
    }

    final Simple-user  user;
    final Security-advisory-credit-types  type;


    Map<String, dynamic> toJson() {
        return {
            'user': user.toJson(),
            'type': type.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          user,
          type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Global-advisoryCreditsInner
            && user == other.user
            && type == other.type
        ;
    }
}
