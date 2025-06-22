import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
@immutable
class Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInner {
    Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInner(
        { required this.reviewer_id,required this.reviewer_type,
         }
    );

    factory Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInner.fromJson(Map<String, dynamic>
        json) {
        return Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInner(
            reviewer_id: (json['reviewer_id'] as int).toInt() ,
            reviewer_type: Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType.fromJson(json['reviewer_type'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInner.fromJson(json);
    }

    final int  reviewer_id;
    final Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType  reviewer_type;


    Map<String, dynamic> toJson() {
        return {
            'reviewer_id': reviewer_id,
            'reviewer_type': reviewer_type.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          reviewer_id,
          reviewer_type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInner
            && reviewer_id == other.reviewer_id
            && reviewer_type == other.reviewer_type
        ;
    }
}
