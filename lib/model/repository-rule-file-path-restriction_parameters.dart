import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-file-path-restriction_parameters.dart';
import 'package:github/model/repository-rule-file-path-restriction_parameters.dart';
@immutable
class Repository-rule-file-path-restrictionParameters {
    Repository-rule-file-path-restrictionParameters(
        {  this.restricted_file_paths = const [],
         }
    );

    factory Repository-rule-file-path-restrictionParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-file-path-restrictionParameters(
            restricted_file_paths: (json['restricted_file_paths'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-file-path-restrictionParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-file-path-restrictionParameters.fromJson(json);
    }

    final List<String>  restricted_file_paths;


    Map<String, dynamic> toJson() {
        return {
            'restricted_file_paths': restricted_file_paths,
        };
    }

    @override
    int get hashCode =>
          restricted_file_paths.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-file-path-restrictionParameters
            && listsEqual(restricted_file_paths, other.restricted_file_paths)
        ;
    }
}
