import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
enum Security-and-analysisAdvancedSecurityStatus {
    enabled._('enabled'),
    disabled._('disabled'),
    ;

    const Security-and-analysisAdvancedSecurityStatus._(this.value);

    factory Security-and-analysisAdvancedSecurityStatus.fromJson(String json) {
        return Security-and-analysisAdvancedSecurityStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Security-and-analysisAdvancedSecurityStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisAdvancedSecurityStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisAdvancedSecurityStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
