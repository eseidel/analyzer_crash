import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/create_configuration_request_dependency_graph_autosubmit_action_options.dart';
import 'package:github/model/code_security/create_configuration_request_dependency_graph_autosubmit_action_options.dart';
@immutable
class CodeSecurity&#x2F;createConfigurationRequestDependencyGraphAutosubmitActionOptions {
    CodeSecurity&#x2F;createConfigurationRequestDependencyGraphAutosubmitActionOptions(
        {  this.labeled_runners = false,
         }
    );

    factory CodeSecurity&#x2F;createConfigurationRequestDependencyGraphAutosubmitActionOptions.fromJson(Map<String, dynamic>
        json) {
        return CodeSecurity&#x2F;createConfigurationRequestDependencyGraphAutosubmitActionOptions(
            labeled_runners: (json['labeled_runners'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;createConfigurationRequestDependencyGraphAutosubmitActionOptions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;createConfigurationRequestDependencyGraphAutosubmitActionOptions.fromJson(json);
    }

    final  bool? labeled_runners;


    Map<String, dynamic> toJson() {
        return {
            'labeled_runners': labeled_runners,
        };
    }

    @override
    int get hashCode =>
          labeled_runners.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is CodeSecurity&#x2F;createConfigurationRequestDependencyGraphAutosubmitActionOptions
            && labeled_runners == other.labeled_runners
        ;
    }
}
