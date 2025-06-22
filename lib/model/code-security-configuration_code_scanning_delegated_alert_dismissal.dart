import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_code_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code-security-configuration_code_scanning_delegated_alert_dismissal.dart';
enum Code-security-configurationCodeScanningDelegatedAlertDismissal {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationCodeScanningDelegatedAlertDismissal._(this.value);

    factory Code-security-configurationCodeScanningDelegatedAlertDismissal.fromJson(String json) {
        return Code-security-configurationCodeScanningDelegatedAlertDismissal.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationCodeScanningDelegatedAlertDismissal value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationCodeScanningDelegatedAlertDismissal? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationCodeScanningDelegatedAlertDismissal.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
