import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-workflows_type.dart';
import 'package:github/model/repository-rule-workflows_type.dart';
enum Repository-rule-workflowsType {
    workflows._('workflows'),
    ;

    const Repository-rule-workflowsType._(this.value);

    factory Repository-rule-workflowsType.fromJson(String json) {
        return Repository-rule-workflowsType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-workflowsType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-workflowsType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-workflowsType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
