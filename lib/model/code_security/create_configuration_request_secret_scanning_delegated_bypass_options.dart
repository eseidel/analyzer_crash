import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass_options.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass_options.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
@immutable
class CodeSecurity&#x2F;createConfigurationRequestSecretScanningDelegatedBypassOptions {
    CodeSecurity&#x2F;createConfigurationRequestSecretScanningDelegatedBypassOptions(
        {  this.reviewers = const [],
         }
    );

    factory CodeSecurity&#x2F;createConfigurationRequestSecretScanningDelegatedBypassOptions.fromJson(Map<String, dynamic>
        json) {
        return CodeSecurity&#x2F;createConfigurationRequestSecretScanningDelegatedBypassOptions(
            reviewers: (json['reviewers'] as List?)?.map<CodeSecurity/createConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInner>((e) => CodeSecurity/createConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;createConfigurationRequestSecretScanningDelegatedBypassOptions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;createConfigurationRequestSecretScanningDelegatedBypassOptions.fromJson(json);
    }

    final  List<CodeSecurity/createConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInner>? reviewers;


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
        return other is CodeSecurity&#x2F;createConfigurationRequestSecretScanningDelegatedBypassOptions
            && listsEqual(reviewers, other.reviewers)
        ;
    }
}
