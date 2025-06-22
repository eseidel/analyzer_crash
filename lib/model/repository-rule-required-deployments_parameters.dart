import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-required-deployments_parameters.dart';
import 'package:github/model/repository-rule-required-deployments_parameters.dart';
@immutable
class Repository-rule-required-deploymentsParameters {
    Repository-rule-required-deploymentsParameters(
        {  this.required_deployment_environments = const [],
         }
    );

    factory Repository-rule-required-deploymentsParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-required-deploymentsParameters(
            required_deployment_environments: (json['required_deployment_environments'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-required-deploymentsParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-required-deploymentsParameters.fromJson(json);
    }

    final List<String>  required_deployment_environments;


    Map<String, dynamic> toJson() {
        return {
            'required_deployment_environments': required_deployment_environments,
        };
    }

    @override
    int get hashCode =>
          required_deployment_environments.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-required-deploymentsParameters
            && listsEqual(required_deployment_environments, other.required_deployment_environments)
        ;
    }
}
