import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
enum CodeSecurity&#x2F;updateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType {
    team._('TEAM'),
    role._('ROLE'),
    ;

    const CodeSecurity&#x2F;updateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType._(this.value);

    factory CodeSecurity&#x2F;updateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType.fromJson(String json) {
        return CodeSecurity&#x2F;updateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;updateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;updateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;updateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
