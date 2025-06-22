import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_branch_protection_request_required_status_checks.dart';
import 'package:github/model/repos/update_branch_protection_request_required_status_checks_checks_inner.dart';
import 'package:github/model/repos/update_branch_protection_request_required_status_checks.dart';
import 'package:github/model/repos/update_branch_protection_request_required_status_checks_checks_inner.dart';
@immutable
class Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecks {
    Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecks(
        { required this.strict, this.contexts = const [], this.checks = const [],
         }
    );

    factory Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecks.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecks(
            strict: (json['strict'] as bool) ,
            contexts: (json['contexts'] as List).cast<String>() ,
            checks: (json['checks'] as List?)?.map<Repos/updateBranchProtectionRequestRequiredStatusChecksChecksInner>((e) => Repos/updateBranchProtectionRequestRequiredStatusChecksChecksInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecks? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecks.fromJson(json);
    }

    final bool  strict;
    final List<String>  contexts;
    final  List<Repos/updateBranchProtectionRequestRequiredStatusChecksChecksInner>? checks;


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
        return other is Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecks
            && strict == other.strict
            && listsEqual(contexts, other.contexts)
            && listsEqual(checks, other.checks)
        ;
    }
}
