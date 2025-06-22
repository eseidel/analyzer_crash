import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
enum Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType {
    team._('TEAM'),
    role._('ROLE'),
    ;

    const Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType._(this.value);

    factory Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType.fromJson(String json) {
        return Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
