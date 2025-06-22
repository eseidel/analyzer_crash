import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/status-check-policy.dart';
import 'package:github/model/status-check-policy_checks_inner.dart';
import 'package:github/model/status-check-policy.dart';
import 'package:github/model/status-check-policy_checks_inner.dart';
@immutable
class Status-check-policy {
    Status-check-policy(
        { required this.url,required this.strict, this.contexts = const [], this.checks = const [],required this.contexts_url,
         }
    );

    factory Status-check-policy.fromJson(Map<String, dynamic>
        json) {
        return Status-check-policy(
            url: json['url'] as String ,
            strict: (json['strict'] as bool) ,
            contexts: (json['contexts'] as List).cast<String>() ,
            checks: (json['checks'] as List).map<Status-check-policyChecksInner>((e) => Status-check-policyChecksInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            contexts_url: json['contexts_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Status-check-policy? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Status-check-policy.fromJson(json);
    }

    final String  url;
    final bool  strict;
    final List<String>  contexts;
    final List<Status-check-policyChecksInner>  checks;
    final String  contexts_url;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'strict': strict,
            'contexts': contexts,
            'checks': checks.map((e) => e.toJson()).toList(),
            'contexts_url': contexts_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          strict,
          contexts,
          checks,
          contexts_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Status-check-policy
            && url == other.url
            && strict == other.strict
            && listsEqual(contexts, other.contexts)
            && listsEqual(checks, other.checks)
            && contexts_url == other.contexts_url
        ;
    }
}
