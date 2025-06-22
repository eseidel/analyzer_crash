import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-required-deployments_type.dart';
import 'package:github/model/repository-rule-required-deployments_type.dart';
enum Repository-rule-required-deploymentsType {
    requiredDeployments._('required_deployments'),
    ;

    const Repository-rule-required-deploymentsType._(this.value);

    factory Repository-rule-required-deploymentsType.fromJson(String json) {
        return Repository-rule-required-deploymentsType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-required-deploymentsType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-required-deploymentsType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-required-deploymentsType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
