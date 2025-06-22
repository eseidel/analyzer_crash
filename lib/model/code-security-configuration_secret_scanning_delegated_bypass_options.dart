import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
@immutable
class Code-security-configurationSecretScanningDelegatedBypassOptions {
    Code-security-configurationSecretScanningDelegatedBypassOptions(
        {  this.reviewers = const [],
         }
    );

    factory Code-security-configurationSecretScanningDelegatedBypassOptions.fromJson(Map<String, dynamic>
        json) {
        return Code-security-configurationSecretScanningDelegatedBypassOptions(
            reviewers: (json['reviewers'] as List?)?.map<Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInner>((e) => Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationSecretScanningDelegatedBypassOptions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationSecretScanningDelegatedBypassOptions.fromJson(json);
    }

    final  List<Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInner>? reviewers;


    Map<String, dynamic> toJson() {
        return {
            'reviewers': reviewers?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
          reviewers.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-security-configurationSecretScanningDelegatedBypassOptions
            && listsEqual(reviewers, other.reviewers)
        ;
    }
}
