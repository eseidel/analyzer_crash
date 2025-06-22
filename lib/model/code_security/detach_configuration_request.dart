import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/detach_configuration_request.dart';
import 'package:github/model/code_security/detach_configuration_request.dart';
@immutable
class CodeSecurity&#x2F;detachConfigurationRequest {
    CodeSecurity&#x2F;detachConfigurationRequest(
        {  this.selected_repository_ids = const [],
         }
    );

    factory CodeSecurity&#x2F;detachConfigurationRequest.fromJson(Map<String, dynamic>
        json) {
        return CodeSecurity&#x2F;detachConfigurationRequest(
            selected_repository_ids: (json['selected_repository_ids'] as List?)?.cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;detachConfigurationRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;detachConfigurationRequest.fromJson(json);
    }

    final  List<int>? selected_repository_ids;


    Map<String, dynamic> toJson() {
        return {
            'selected_repository_ids': selected_repository_ids,
        };
    }

    @override
    int get hashCode =>
          selected_repository_ids.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is CodeSecurity&#x2F;detachConfigurationRequest
            && listsEqual(selected_repository_ids, other.selected_repository_ids)
        ;
    }
}
