import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/attach_enterprise_configuration_request.dart';
import 'package:github/model/code_security/attach_enterprise_configuration_request_scope.dart';
import 'package:github/model/code_security/attach_enterprise_configuration_request.dart';
import 'package:github/model/code_security/attach_enterprise_configuration_request_scope.dart';
@immutable
class CodeSecurity&#x2F;attachEnterpriseConfigurationRequest {
    CodeSecurity&#x2F;attachEnterpriseConfigurationRequest(
        { required this.scope,
         }
    );

    factory CodeSecurity&#x2F;attachEnterpriseConfigurationRequest.fromJson(Map<String, dynamic>
        json) {
        return CodeSecurity&#x2F;attachEnterpriseConfigurationRequest(
            scope: CodeSecurity/attachEnterpriseConfigurationRequestScope.fromJson(json['scope'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;attachEnterpriseConfigurationRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;attachEnterpriseConfigurationRequest.fromJson(json);
    }

    final CodeSecurity/attachEnterpriseConfigurationRequestScope  scope;


    Map<String, dynamic> toJson() {
        return {
            'scope': scope.toJson(),
        };
    }

    @override
    int get hashCode =>
          scope.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is CodeSecurity&#x2F;attachEnterpriseConfigurationRequest
            && scope == other.scope
        ;
    }
}
