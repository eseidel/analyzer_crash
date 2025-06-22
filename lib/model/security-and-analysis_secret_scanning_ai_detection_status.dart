import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
enum Security-and-analysisSecretScanningAiDetectionStatus {
    enabled._('enabled'),
    disabled._('disabled'),
    ;

    const Security-and-analysisSecretScanningAiDetectionStatus._(this.value);

    factory Security-and-analysisSecretScanningAiDetectionStatus.fromJson(String json) {
        return Security-and-analysisSecretScanningAiDetectionStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Security-and-analysisSecretScanningAiDetectionStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisSecretScanningAiDetectionStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisSecretScanningAiDetectionStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
