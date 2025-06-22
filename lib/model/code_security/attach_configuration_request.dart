import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/attach_configuration_request.dart';
import 'package:github/model/code_security/attach_configuration_request_scope.dart';
import 'package:github/model/code_security/attach_configuration_request.dart';
import 'package:github/model/code_security/attach_configuration_request_scope.dart';
@immutable
class CodeSecurity&#x2F;attachConfigurationRequest {
    CodeSecurity&#x2F;attachConfigurationRequest(
        { required this.scope, this.selected_repository_ids = const [],
         }
    );

    factory CodeSecurity&#x2F;attachConfigurationRequest.fromJson(Map<String, dynamic>
        json) {
        return CodeSecurity&#x2F;attachConfigurationRequest(
            scope: CodeSecurity/attachConfigurationRequestScope.fromJson(json['scope'] as String) ,
            selected_repository_ids: (json['selected_repository_ids'] as List?)?.cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;attachConfigurationRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;attachConfigurationRequest.fromJson(json);
    }

    final CodeSecurity/attachConfigurationRequestScope  scope;
    final  List<int>? selected_repository_ids;


    Map<String, dynamic> toJson() {
        return {
            'scope': scope.toJson(),
            'selected_repository_ids': selected_repository_ids,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          scope,
          selected_repository_ids,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is CodeSecurity&#x2F;attachConfigurationRequest
            && scope == other.scope
            && listsEqual(selected_repository_ids, other.selected_repository_ids)
        ;
    }
}
