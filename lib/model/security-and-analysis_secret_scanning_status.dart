import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
enum Security-and-analysisSecretScanningStatus {
    enabled._('enabled'),
    disabled._('disabled'),
    ;

    const Security-and-analysisSecretScanningStatus._(this.value);

    factory Security-and-analysisSecretScanningStatus.fromJson(String json) {
        return Security-and-analysisSecretScanningStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Security-and-analysisSecretScanningStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisSecretScanningStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisSecretScanningStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
