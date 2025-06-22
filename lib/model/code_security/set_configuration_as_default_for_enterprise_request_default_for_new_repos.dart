import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/set_configuration_as_default_for_enterprise_request_default_for_new_repos.dart';
import 'package:github/model/code_security/set_configuration_as_default_for_enterprise_request_default_for_new_repos.dart';
enum CodeSecurity&#x2F;setConfigurationAsDefaultForEnterpriseRequestDefaultForNewRepos {
    all._('all'),
    none._('none'),
    privateAndInternal._('private_and_internal'),
    public._('public'),
    ;

    const CodeSecurity&#x2F;setConfigurationAsDefaultForEnterpriseRequestDefaultForNewRepos._(this.value);

    factory CodeSecurity&#x2F;setConfigurationAsDefaultForEnterpriseRequestDefaultForNewRepos.fromJson(String json) {
        return CodeSecurity&#x2F;setConfigurationAsDefaultForEnterpriseRequestDefaultForNewRepos.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;setConfigurationAsDefaultForEnterpriseRequestDefaultForNewRepos value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;setConfigurationAsDefaultForEnterpriseRequestDefaultForNewRepos? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;setConfigurationAsDefaultForEnterpriseRequestDefaultForNewRepos.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
