import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-pull-request.dart';
import 'package:github/model/repository-rule-pull-request_type.dart';
import 'package:github/model/repository-rule-pull-request_parameters.dart';
import 'package:github/model/repository-rule-pull-request_parameters_allowed_merge_methods_inner.dart';
import 'package:github/model/repository-rule-pull-request.dart';
import 'package:github/model/repository-rule-pull-request_type.dart';
import 'package:github/model/repository-rule-pull-request_parameters.dart';
import 'package:github/model/repository-rule-pull-request_parameters_allowed_merge_methods_inner.dart';
@immutable
class Repository-rule-pull-request {
    Repository-rule-pull-request(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-pull-request.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-pull-request(
            type: Repository-rule-pull-requestType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-pull-requestParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-pull-request? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-pull-request.fromJson(json);
    }

    final Repository-rule-pull-requestType  type;
    final  Repository-rule-pull-requestParameters? parameters;


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
        return other is Repository-rule-pull-request
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
