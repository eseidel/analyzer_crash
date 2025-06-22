import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-required-status-checks_type.dart';
import 'package:github/model/repository-rule-required-status-checks_type.dart';
enum Repository-rule-required-status-checksType {
    requiredStatusChecks._('required_status_checks'),
    ;

    const Repository-rule-required-status-checksType._(this.value);

    factory Repository-rule-required-status-checksType.fromJson(String json) {
        return Repository-rule-required-status-checksType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-required-status-checksType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-required-status-checksType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-required-status-checksType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
