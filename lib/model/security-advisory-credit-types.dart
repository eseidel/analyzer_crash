import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/security-advisory-credit-types.dart';
enum Security-advisory-credit-types {
    analyst._('analyst'),
    finder._('finder'),
    reporter._('reporter'),
    coordinator._('coordinator'),
    remediationDeveloper._('remediation_developer'),
    remediationReviewer._('remediation_reviewer'),
    remediationVerifier._('remediation_verifier'),
    tool._('tool'),
    sponsor._('sponsor'),
    other._('other'),
    ;

    const Security-advisory-credit-types._(this.value);

    factory Security-advisory-credit-types.fromJson(String json) {
        return Security-advisory-credit-types.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Security-advisory-credit-types value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-advisory-credit-types? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Security-advisory-credit-types.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
