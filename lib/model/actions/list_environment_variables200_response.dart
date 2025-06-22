import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/list_environment_variables200_response.dart';
import 'package:github/model/actions-variable.dart';
import 'package:github/model/actions/list_environment_variables200_response.dart';
import 'package:github/model/actions-variable.dart';
@immutable
class Actions&#x2F;listEnvironmentVariables200Response {
    Actions&#x2F;listEnvironmentVariables200Response(
        { required this.total_count, this.variables = const [],
         }
    );

    factory Actions&#x2F;listEnvironmentVariables200Response.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;listEnvironmentVariables200Response(
            total_count: (json['total_count'] as int).toInt() ,
            variables: (json['variables'] as List).map<Actions-variable>((e) => Actions-variable.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;listEnvironmentVariables200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;listEnvironmentVariables200Response.fromJson(json);
    }

    final int  total_count;
    final List<Actions-variable>  variables;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'variables': variables.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          variables,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;listEnvironmentVariables200Response
            && total_count == other.total_count
            && listsEqual(variables, other.variables)
        ;
    }
}
