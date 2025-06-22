import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_dependency_graph.dart';
import 'package:github/model/code-security-configuration_dependency_graph.dart';
enum Code-security-configurationDependencyGraph {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationDependencyGraph._(this.value);

    factory Code-security-configurationDependencyGraph.fromJson(String json) {
        return Code-security-configurationDependencyGraph.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationDependencyGraph value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationDependencyGraph? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationDependencyGraph.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
