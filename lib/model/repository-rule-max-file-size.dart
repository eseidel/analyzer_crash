import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-max-file-size.dart';
import 'package:github/model/repository-rule-max-file-size_type.dart';
import 'package:github/model/repository-rule-max-file-size_parameters.dart';
import 'package:github/model/repository-rule-max-file-size.dart';
import 'package:github/model/repository-rule-max-file-size_type.dart';
import 'package:github/model/repository-rule-max-file-size_parameters.dart';
@immutable
class Repository-rule-max-file-size {
    Repository-rule-max-file-size(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-max-file-size.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-max-file-size(
            type: Repository-rule-max-file-sizeType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-max-file-sizeParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-max-file-size? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-max-file-size.fromJson(json);
    }

    final Repository-rule-max-file-sizeType  type;
    final  Repository-rule-max-file-sizeParameters? parameters;


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
        return other is Repository-rule-max-file-size
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
