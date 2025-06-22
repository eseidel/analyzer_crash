import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/create_repo_variable_request.dart';
import 'package:github/model/actions/create_repo_variable_request.dart';
@immutable
class Actions&#x2F;createRepoVariableRequest {
    Actions&#x2F;createRepoVariableRequest(
        { required this.name,required this.value,
         }
    );

    factory Actions&#x2F;createRepoVariableRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;createRepoVariableRequest(
            name: json['name'] as String ,
            value: json['value'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;createRepoVariableRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;createRepoVariableRequest.fromJson(json);
    }

    final String  name;
    final String  value;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'value': value,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          value,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;createRepoVariableRequest
            && name == other.name
            && value == other.value
        ;
    }
}
