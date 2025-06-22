import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-update.dart';
import 'package:github/model/repository-rule-update_type.dart';
import 'package:github/model/repository-rule-update_parameters.dart';
import 'package:github/model/repository-rule-update.dart';
import 'package:github/model/repository-rule-update_type.dart';
import 'package:github/model/repository-rule-update_parameters.dart';
@immutable
class Repository-rule-update {
    Repository-rule-update(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-update.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-update(
            type: Repository-rule-updateType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-updateParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-update? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-update.fromJson(json);
    }

    final Repository-rule-updateType  type;
    final  Repository-rule-updateParameters? parameters;


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
        return other is Repository-rule-update
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
