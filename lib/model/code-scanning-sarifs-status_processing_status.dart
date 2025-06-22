import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-sarifs-status_processing_status.dart';
import 'package:github/model/code-scanning-sarifs-status_processing_status.dart';
enum Code-scanning-sarifs-statusProcessingStatus {
    pending._('pending'),
    complete._('complete'),
    failed._('failed'),
    ;

    const Code-scanning-sarifs-statusProcessingStatus._(this.value);

    factory Code-scanning-sarifs-statusProcessingStatus.fromJson(String json) {
        return Code-scanning-sarifs-statusProcessingStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-sarifs-statusProcessingStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-sarifs-statusProcessingStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-sarifs-statusProcessingStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
