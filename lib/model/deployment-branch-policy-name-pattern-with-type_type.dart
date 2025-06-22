import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deployment-branch-policy-name-pattern-with-type_type.dart';
import 'package:github/model/deployment-branch-policy-name-pattern-with-type_type.dart';
enum Deployment-branch-policy-name-pattern-with-typeType {
    branch._('branch'),
    tag._('tag'),
    ;

    const Deployment-branch-policy-name-pattern-with-typeType._(this.value);

    factory Deployment-branch-policy-name-pattern-with-typeType.fromJson(String json) {
        return Deployment-branch-policy-name-pattern-with-typeType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Deployment-branch-policy-name-pattern-with-typeType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Deployment-branch-policy-name-pattern-with-typeType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Deployment-branch-policy-name-pattern-with-typeType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
