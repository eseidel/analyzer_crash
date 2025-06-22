import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_dependency_graph.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_dependency_graph.dart';
enum CodeSecurity&#x2F;createConfigurationForEnterpriseRequestDependencyGraph {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const CodeSecurity&#x2F;createConfigurationForEnterpriseRequestDependencyGraph._(this.value);

    factory CodeSecurity&#x2F;createConfigurationForEnterpriseRequestDependencyGraph.fromJson(String json) {
        return CodeSecurity&#x2F;createConfigurationForEnterpriseRequestDependencyGraph.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;createConfigurationForEnterpriseRequestDependencyGraph value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;createConfigurationForEnterpriseRequestDependencyGraph? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;createConfigurationForEnterpriseRequestDependencyGraph.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
