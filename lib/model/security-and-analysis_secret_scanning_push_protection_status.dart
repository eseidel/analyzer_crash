import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
enum Security-and-analysisSecretScanningPushProtectionStatus {
    enabled._('enabled'),
    disabled._('disabled'),
    ;

    const Security-and-analysisSecretScanningPushProtectionStatus._(this.value);

    factory Security-and-analysisSecretScanningPushProtectionStatus.fromJson(String json) {
        return Security-and-analysisSecretScanningPushProtectionStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Security-and-analysisSecretScanningPushProtectionStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisSecretScanningPushProtectionStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisSecretScanningPushProtectionStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
