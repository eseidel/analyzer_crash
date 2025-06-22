import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-update_parameters.dart';
import 'package:github/model/repository-rule-update_parameters.dart';
@immutable
class Repository-rule-updateParameters {
    Repository-rule-updateParameters(
        { required this.update_allows_fetch_and_merge,
         }
    );

    factory Repository-rule-updateParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-updateParameters(
            update_allows_fetch_and_merge: (json['update_allows_fetch_and_merge'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-updateParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-updateParameters.fromJson(json);
    }

    final bool  update_allows_fetch_and_merge;


    Map<String, dynamic> toJson() {
        return {
            'update_allows_fetch_and_merge': update_allows_fetch_and_merge,
        };
    }

    @override
    int get hashCode =>
          update_allows_fetch_and_merge.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-updateParameters
            && update_allows_fetch_and_merge == other.update_allows_fetch_and_merge
        ;
    }
}
