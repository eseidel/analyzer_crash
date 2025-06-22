import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_scanning/list_alerts_for_repo_parameter11.dart';
import 'package:github/model/code_scanning/list_alerts_for_repo_parameter11.dart';
enum CodeScanning&#x2F;listAlertsForRepoParameter11 {
    created._('created'),
    updated._('updated'),
    ;

    const CodeScanning&#x2F;listAlertsForRepoParameter11._(this.value);

    factory CodeScanning&#x2F;listAlertsForRepoParameter11.fromJson(String json) {
        return CodeScanning&#x2F;listAlertsForRepoParameter11.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeScanning&#x2F;listAlertsForRepoParameter11 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeScanning&#x2F;listAlertsForRepoParameter11? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeScanning&#x2F;listAlertsForRepoParameter11.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
