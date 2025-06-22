import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
enum Security-and-analysisCodeSecurityStatus {
    enabled._('enabled'),
    disabled._('disabled'),
    ;

    const Security-and-analysisCodeSecurityStatus._(this.value);

    factory Security-and-analysisCodeSecurityStatus.fromJson(String json) {
        return Security-and-analysisCodeSecurityStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Security-and-analysisCodeSecurityStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisCodeSecurityStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisCodeSecurityStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
