import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
enum Deployment-branch-policyType {
    branch._('branch'),
    tag._('tag'),
    ;

    const Deployment-branch-policyType._(this.value);

    factory Deployment-branch-policyType.fromJson(String json) {
        return Deployment-branch-policyType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Deployment-branch-policyType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Deployment-branch-policyType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Deployment-branch-policyType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
