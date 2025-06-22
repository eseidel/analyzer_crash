import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/get_configurations_for_org_parameter1.dart';
import 'package:github/model/code_security/get_configurations_for_org_parameter1.dart';
enum CodeSecurity&#x2F;getConfigurationsForOrgParameter1 {
    global._('global'),
    all._('all'),
    ;

    const CodeSecurity&#x2F;getConfigurationsForOrgParameter1._(this.value);

    factory CodeSecurity&#x2F;getConfigurationsForOrgParameter1.fromJson(String json) {
        return CodeSecurity&#x2F;getConfigurationsForOrgParameter1.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;getConfigurationsForOrgParameter1 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;getConfigurationsForOrgParameter1? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;getConfigurationsForOrgParameter1.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
