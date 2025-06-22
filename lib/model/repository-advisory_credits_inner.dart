import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
@immutable
class Repository-advisoryCreditsInner {
    Repository-advisoryCreditsInner(
        {  this.login, this.type,
         }
    );

    factory Repository-advisoryCreditsInner.fromJson(Map<String, dynamic>
        json) {
        return Repository-advisoryCreditsInner(
            login: json['login'] as String? ,
            type: Security-advisory-credit-types.maybeFromJson(json['type'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisoryCreditsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisoryCreditsInner.fromJson(json);
    }

    final  String? login;
    final  Security-advisory-credit-types? type;


    Map<String, dynamic> toJson() {
        return {
            'login': login,
            'type': type?.toJson(),
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
        return other is Repository-advisoryCreditsInner
            && login == other.login
            && type == other.type
        ;
    }
}
