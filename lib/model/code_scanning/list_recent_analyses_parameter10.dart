import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_scanning/list_recent_analyses_parameter10.dart';
import 'package:github/model/code_scanning/list_recent_analyses_parameter10.dart';
enum CodeScanning&#x2F;listRecentAnalysesParameter10 {
    created._('created'),
    ;

    const CodeScanning&#x2F;listRecentAnalysesParameter10._(this.value);

    factory CodeScanning&#x2F;listRecentAnalysesParameter10.fromJson(String json) {
        return CodeScanning&#x2F;listRecentAnalysesParameter10.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeScanning&#x2F;listRecentAnalysesParameter10 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeScanning&#x2F;listRecentAnalysesParameter10? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeScanning&#x2F;listRecentAnalysesParameter10.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
