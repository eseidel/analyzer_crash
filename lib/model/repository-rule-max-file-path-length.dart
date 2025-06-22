import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-max-file-path-length.dart';
import 'package:github/model/repository-rule-max-file-path-length_type.dart';
import 'package:github/model/repository-rule-max-file-path-length_parameters.dart';
import 'package:github/model/repository-rule-max-file-path-length.dart';
import 'package:github/model/repository-rule-max-file-path-length_type.dart';
import 'package:github/model/repository-rule-max-file-path-length_parameters.dart';
@immutable
class Repository-rule-max-file-path-length {
    Repository-rule-max-file-path-length(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-max-file-path-length.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-max-file-path-length(
            type: Repository-rule-max-file-path-lengthType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-max-file-path-lengthParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-max-file-path-length? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-max-file-path-length.fromJson(json);
    }

    final Repository-rule-max-file-path-lengthType  type;
    final  Repository-rule-max-file-path-lengthParameters? parameters;


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
        return other is Repository-rule-max-file-path-length
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
