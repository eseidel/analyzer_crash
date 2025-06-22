import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/list_custom_deployment_rule_integrations200_response.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
import 'package:github/model/repos/list_custom_deployment_rule_integrations200_response.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
@immutable
class Repos&#x2F;listCustomDeploymentRuleIntegrations200Response {
    Repos&#x2F;listCustomDeploymentRuleIntegrations200Response(
        {  this.total_count, this.available_custom_deployment_protection_rule_integrations = const [],
         }
    );

    factory Repos&#x2F;listCustomDeploymentRuleIntegrations200Response.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;listCustomDeploymentRuleIntegrations200Response(
            total_count: (json['total_count'] as int?).toInt() ,
            available_custom_deployment_protection_rule_integrations: (json['available_custom_deployment_protection_rule_integrations'] as List?)?.map<Custom-deployment-rule-app>((e) => Custom-deployment-rule-app.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;listCustomDeploymentRuleIntegrations200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;listCustomDeploymentRuleIntegrations200Response.fromJson(json);
    }

    final  int? total_count;
    final  List<Custom-deployment-rule-app>? available_custom_deployment_protection_rule_integrations;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'available_custom_deployment_protection_rule_integrations': available_custom_deployment_protection_rule_integrations?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          available_custom_deployment_protection_rule_integrations,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;listCustomDeploymentRuleIntegrations200Response
            && total_count == other.total_count
            && listsEqual(available_custom_deployment_protection_rule_integrations, other.available_custom_deployment_protection_rule_integrations)
        ;
    }
}
