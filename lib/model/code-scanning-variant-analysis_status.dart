import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-variant-analysis_status.dart';
import 'package:github/model/code-scanning-variant-analysis_status.dart';
enum Code-scanning-variant-analysisStatus {
    inProgress._('in_progress'),
    succeeded._('succeeded'),
    failed._('failed'),
    cancelled._('cancelled'),
    ;

    const Code-scanning-variant-analysisStatus._(this.value);

    factory Code-scanning-variant-analysisStatus.fromJson(String json) {
        return Code-scanning-variant-analysisStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-variant-analysisStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-variant-analysisStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-variant-analysisStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
