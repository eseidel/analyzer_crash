import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_dependency_graph_autosubmit_action_options.dart';
import 'package:github/model/code-security-configuration_dependency_graph_autosubmit_action_options.dart';
@immutable
class Code-security-configurationDependencyGraphAutosubmitActionOptions {
    Code-security-configurationDependencyGraphAutosubmitActionOptions(
        {  this.labeled_runners,
         }
    );

    factory Code-security-configurationDependencyGraphAutosubmitActionOptions.fromJson(Map<String, dynamic>
        json) {
        return Code-security-configurationDependencyGraphAutosubmitActionOptions(
            labeled_runners: (json['labeled_runners'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationDependencyGraphAutosubmitActionOptions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationDependencyGraphAutosubmitActionOptions.fromJson(json);
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
        return other is Code-security-configurationDependencyGraphAutosubmitActionOptions
            && labeled_runners == other.labeled_runners
        ;
    }
}
