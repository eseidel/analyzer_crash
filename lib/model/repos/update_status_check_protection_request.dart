import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_status_check_protection_request.dart';
import 'package:github/model/repos/update_status_check_protection_request_checks_inner.dart';
import 'package:github/model/repos/update_status_check_protection_request.dart';
import 'package:github/model/repos/update_status_check_protection_request_checks_inner.dart';
@immutable
class Repos&#x2F;updateStatusCheckProtectionRequest {
    Repos&#x2F;updateStatusCheckProtectionRequest(
        {  this.strict, this.contexts = const [], this.checks = const [],
         }
    );

    factory Repos&#x2F;updateStatusCheckProtectionRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateStatusCheckProtectionRequest(
            strict: (json['strict'] as bool?) ,
            contexts: (json['contexts'] as List?)?.cast<String>() ,
            checks: (json['checks'] as List?)?.map<Repos/updateStatusCheckProtectionRequestChecksInner>((e) => Repos/updateStatusCheckProtectionRequestChecksInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateStatusCheckProtectionRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateStatusCheckProtectionRequest.fromJson(json);
    }

    final  bool? strict;
    final  List<String>? contexts;
    final  List<Repos/updateStatusCheckProtectionRequestChecksInner>? checks;


    Map<String, dynamic> toJson() {
        return {
            'strict': strict,
            'contexts': contexts,
            'checks': checks?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          strict,
          contexts,
          checks,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updateStatusCheckProtectionRequest
            && strict == other.strict
            && listsEqual(contexts, other.contexts)
            && listsEqual(checks, other.checks)
        ;
    }
}
