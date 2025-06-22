import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-required-status-checks.dart';
import 'package:github/model/repository-rule-required-status-checks_type.dart';
import 'package:github/model/repository-rule-required-status-checks_parameters.dart';
import 'package:github/model/repository-rule-params-status-check-configuration.dart';
import 'package:github/model/repository-rule-required-status-checks.dart';
import 'package:github/model/repository-rule-required-status-checks_type.dart';
import 'package:github/model/repository-rule-required-status-checks_parameters.dart';
import 'package:github/model/repository-rule-params-status-check-configuration.dart';
@immutable
class Repository-rule-required-status-checks {
    Repository-rule-required-status-checks(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-required-status-checks.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-required-status-checks(
            type: Repository-rule-required-status-checksType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-required-status-checksParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-required-status-checks? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-required-status-checks.fromJson(json);
    }

    final Repository-rule-required-status-checksType  type;
    final  Repository-rule-required-status-checksParameters? parameters;


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
        return other is Repository-rule-required-status-checks
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
