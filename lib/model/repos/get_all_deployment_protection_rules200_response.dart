import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/get_all_deployment_protection_rules200_response.dart';
import 'package:github/model/deployment-protection-rule.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
import 'package:github/model/repos/get_all_deployment_protection_rules200_response.dart';
import 'package:github/model/deployment-protection-rule.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
@immutable
class Repos&#x2F;getAllDeploymentProtectionRules200Response {
    Repos&#x2F;getAllDeploymentProtectionRules200Response(
        {  this.total_count, this.custom_deployment_protection_rules = const [],
         }
    );

    factory Repos&#x2F;getAllDeploymentProtectionRules200Response.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;getAllDeploymentProtectionRules200Response(
            total_count: (json['total_count'] as int?).toInt() ,
            custom_deployment_protection_rules: (json['custom_deployment_protection_rules'] as List?)?.map<Deployment-protection-rule>((e) => Deployment-protection-rule.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;getAllDeploymentProtectionRules200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;getAllDeploymentProtectionRules200Response.fromJson(json);
    }

    final  int? total_count;
    final  List<Deployment-protection-rule>? custom_deployment_protection_rules;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'custom_deployment_protection_rules': custom_deployment_protection_rules?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          custom_deployment_protection_rules,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;getAllDeploymentProtectionRules200Response
            && total_count == other.total_count
            && listsEqual(custom_deployment_protection_rules, other.custom_deployment_protection_rules)
        ;
    }
}
