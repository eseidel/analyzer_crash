import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-max-file-path-length_parameters.dart';
import 'package:github/model/repository-rule-max-file-path-length_parameters.dart';
@immutable
class Repository-rule-max-file-path-lengthParameters {
    Repository-rule-max-file-path-lengthParameters(
        { required this.max_file_path_length,
         }
    );

    factory Repository-rule-max-file-path-lengthParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-max-file-path-lengthParameters(
            max_file_path_length: (json['max_file_path_length'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-max-file-path-lengthParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-max-file-path-lengthParameters.fromJson(json);
    }

    final int  max_file_path_length;


    Map<String, dynamic> toJson() {
        return {
            'max_file_path_length': max_file_path_length,
        };
    }

    @override
    int get hashCode =>
          max_file_path_length.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-max-file-path-lengthParameters
            && max_file_path_length == other.max_file_path_length
        ;
    }
}
