import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/protected-branch-required-status-check.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
import 'package:github/model/protected-branch-required-status-check.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
@immutable
class Protected-branch-required-status-check {
    Protected-branch-required-status-check(
        {  this.url, this.enforcement_level, this.contexts = const [], this.checks = const [], this.contexts_url, this.strict,
         }
    );

    factory Protected-branch-required-status-check.fromJson(Map<String, dynamic>
        json) {
        return Protected-branch-required-status-check(
            url: json['url'] as String? ,
            enforcement_level: json['enforcement_level'] as String? ,
            contexts: (json['contexts'] as List).cast<String>() ,
            checks: (json['checks'] as List).map<Protected-branch-required-status-checkChecksInner>((e) => Protected-branch-required-status-checkChecksInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            contexts_url: json['contexts_url'] as String? ,
            strict: (json['strict'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branch-required-status-check? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branch-required-status-check.fromJson(json);
    }

    final  String? url;
    final  String? enforcement_level;
    final List<String>  contexts;
    final List<Protected-branch-required-status-checkChecksInner>  checks;
    final  String? contexts_url;
    final  bool? strict;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'enforcement_level': enforcement_level,
            'contexts': contexts,
            'checks': checks.map((e) => e.toJson()).toList(),
            'contexts_url': contexts_url,
            'strict': strict,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          enforcement_level,
          contexts,
          checks,
          contexts_url,
          strict,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Protected-branch-required-status-check
            && url == other.url
            && enforcement_level == other.enforcement_level
            && listsEqual(contexts, other.contexts)
            && listsEqual(checks, other.checks)
            && contexts_url == other.contexts_url
            && strict == other.strict
        ;
    }
}
