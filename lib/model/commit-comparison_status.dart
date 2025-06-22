import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit-comparison_status.dart';
import 'package:github/model/commit-comparison_status.dart';
enum Commit-comparisonStatus {
    diverged._('diverged'),
    ahead._('ahead'),
    behind._('behind'),
    identical._('identical'),
    ;

    const Commit-comparisonStatus._(this.value);

    factory Commit-comparisonStatus.fromJson(String json) {
        return Commit-comparisonStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Commit-comparisonStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Commit-comparisonStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Commit-comparisonStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
