import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/set_configuration_as_default_request.dart';
import 'package:github/model/code_security/set_configuration_as_default_request_default_for_new_repos.dart';
import 'package:github/model/code_security/set_configuration_as_default_request.dart';
import 'package:github/model/code_security/set_configuration_as_default_request_default_for_new_repos.dart';
@immutable
class CodeSecurity&#x2F;setConfigurationAsDefaultRequest {
    CodeSecurity&#x2F;setConfigurationAsDefaultRequest(
        {  this.default_for_new_repos,
         }
    );

    factory CodeSecurity&#x2F;setConfigurationAsDefaultRequest.fromJson(Map<String, dynamic>
        json) {
        return CodeSecurity&#x2F;setConfigurationAsDefaultRequest(
            default_for_new_repos: CodeSecurity/setConfigurationAsDefaultRequestDefaultForNewRepos.maybeFromJson(json['default_for_new_repos'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;setConfigurationAsDefaultRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;setConfigurationAsDefaultRequest.fromJson(json);
    }

    final  CodeSecurity/setConfigurationAsDefaultRequestDefaultForNewRepos? default_for_new_repos;


    Map<String, dynamic> toJson() {
        return {
            'default_for_new_repos': default_for_new_repos?.toJson(),
        };
    }

    @override
    int get hashCode =>
          default_for_new_repos.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is CodeSecurity&#x2F;setConfigurationAsDefaultRequest
            && default_for_new_repos == other.default_for_new_repos
        ;
    }
}
