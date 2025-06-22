import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-required-deployments.dart';
import 'package:github/model/repository-rule-required-deployments_type.dart';
import 'package:github/model/repository-rule-required-deployments_parameters.dart';
import 'package:github/model/repository-rule-required-deployments.dart';
import 'package:github/model/repository-rule-required-deployments_type.dart';
import 'package:github/model/repository-rule-required-deployments_parameters.dart';
@immutable
class Repository-rule-required-deployments {
    Repository-rule-required-deployments(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-required-deployments.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-required-deployments(
            type: Repository-rule-required-deploymentsType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-required-deploymentsParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-required-deployments? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-required-deployments.fromJson(json);
    }

    final Repository-rule-required-deploymentsType  type;
    final  Repository-rule-required-deploymentsParameters? parameters;


    Map<String, dynamic> toJson() {
        return {
            'type': type.toJson(),
            'parameters': parameters?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          parameters,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-required-deployments
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
