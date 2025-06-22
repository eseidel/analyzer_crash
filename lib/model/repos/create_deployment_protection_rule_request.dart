import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_deployment_protection_rule_request.dart';
import 'package:github/model/repos/create_deployment_protection_rule_request.dart';
@immutable
class Repos&#x2F;createDeploymentProtectionRuleRequest {
    Repos&#x2F;createDeploymentProtectionRuleRequest(
        {  this.integration_id,
         }
    );

    factory Repos&#x2F;createDeploymentProtectionRuleRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createDeploymentProtectionRuleRequest(
            integration_id: (json['integration_id'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createDeploymentProtectionRuleRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createDeploymentProtectionRuleRequest.fromJson(json);
    }

    final  int? integration_id;


    Map<String, dynamic> toJson() {
        return {
            'integration_id': integration_id,
        };
    }

    @override
    int get hashCode =>
          integration_id.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createDeploymentProtectionRuleRequest
            && integration_id == other.integration_id
        ;
    }
}
