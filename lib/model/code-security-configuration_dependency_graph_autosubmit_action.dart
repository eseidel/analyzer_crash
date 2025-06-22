import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_dependency_graph_autosubmit_action.dart';
import 'package:github/model/code-security-configuration_dependency_graph_autosubmit_action.dart';
enum Code-security-configurationDependencyGraphAutosubmitAction {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationDependencyGraphAutosubmitAction._(this.value);

    factory Code-security-configurationDependencyGraphAutosubmitAction.fromJson(String json) {
        return Code-security-configurationDependencyGraphAutosubmitAction.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationDependencyGraphAutosubmitAction value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationDependencyGraphAutosubmitAction? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationDependencyGraphAutosubmitAction.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
