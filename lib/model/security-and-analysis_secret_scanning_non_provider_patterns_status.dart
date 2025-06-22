import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
enum Security-and-analysisSecretScanningNonProviderPatternsStatus {
    enabled._('enabled'),
    disabled._('disabled'),
    ;

    const Security-and-analysisSecretScanningNonProviderPatternsStatus._(this.value);

    factory Security-and-analysisSecretScanningNonProviderPatternsStatus.fromJson(String json) {
        return Security-and-analysisSecretScanningNonProviderPatternsStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Security-and-analysisSecretScanningNonProviderPatternsStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisSecretScanningNonProviderPatternsStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisSecretScanningNonProviderPatternsStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
