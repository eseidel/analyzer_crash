import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-max-file-size_parameters.dart';
import 'package:github/model/repository-rule-max-file-size_parameters.dart';
@immutable
class Repository-rule-max-file-sizeParameters {
    Repository-rule-max-file-sizeParameters(
        { required this.max_file_size,
         }
    );

    factory Repository-rule-max-file-sizeParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-max-file-sizeParameters(
            max_file_size: (json['max_file_size'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-max-file-sizeParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-max-file-sizeParameters.fromJson(json);
    }

    final int  max_file_size;


    Map<String, dynamic> toJson() {
        return {
            'max_file_size': max_file_size,
        };
    }

    @override
    int get hashCode =>
          max_file_size.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-max-file-sizeParameters
            && max_file_size == other.max_file_size
        ;
    }
}
