import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory-update_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-update_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
@immutable
class Repository-advisory-updateCreditsInner {
    Repository-advisory-updateCreditsInner(
        { required this.login,required this.type,
         }
    );

    factory Repository-advisory-updateCreditsInner.fromJson(Map<String, dynamic>
        json) {
        return Repository-advisory-updateCreditsInner(
            login: json['login'] as String ,
            type: Security-advisory-credit-types.fromJson(json['type'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisory-updateCreditsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisory-updateCreditsInner.fromJson(json);
    }

    final String  login;
    final Security-advisory-credit-types  type;


    Map<String, dynamic> toJson() {
        return {
            'login': login,
            'type': type.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          login,
          type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-advisory-updateCreditsInner
            && login == other.login
            && type == other.type
        ;
    }
}
