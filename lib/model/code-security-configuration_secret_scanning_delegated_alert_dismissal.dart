import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_alert_dismissal.dart';
enum Code-security-configurationSecretScanningDelegatedAlertDismissal {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationSecretScanningDelegatedAlertDismissal._(this.value);

    factory Code-security-configurationSecretScanningDelegatedAlertDismissal.fromJson(String json) {
        return Code-security-configurationSecretScanningDelegatedAlertDismissal.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationSecretScanningDelegatedAlertDismissal value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationSecretScanningDelegatedAlertDismissal? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationSecretScanningDelegatedAlertDismissal.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
