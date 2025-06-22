import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-file-extension-restriction_parameters.dart';
import 'package:github/model/repository-rule-file-extension-restriction_parameters.dart';
@immutable
class Repository-rule-file-extension-restrictionParameters {
    Repository-rule-file-extension-restrictionParameters(
        {  this.restricted_file_extensions = const [],
         }
    );

    factory Repository-rule-file-extension-restrictionParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-file-extension-restrictionParameters(
            restricted_file_extensions: (json['restricted_file_extensions'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-file-extension-restrictionParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-file-extension-restrictionParameters.fromJson(json);
    }

    final List<String>  restricted_file_extensions;


    Map<String, dynamic> toJson() {
        return {
            'restricted_file_extensions': restricted_file_extensions,
        };
    }

    @override
    int get hashCode =>
          restricted_file_extensions.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-file-extension-restrictionParameters
            && listsEqual(restricted_file_extensions, other.restricted_file_extensions)
        ;
    }
}
