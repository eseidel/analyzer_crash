import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_advanced_security.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_dependency_graph.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_dependency_graph_autosubmit_action.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_dependency_graph_autosubmit_action_options.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_dependabot_alerts.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_dependabot_security_updates.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_code_scanning_default_setup.dart';
import 'package:github/model/code-scanning-default-setup-options.dart';
import 'package:github/model/code-scanning-default-setup-options_runner_type.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_code_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning_push_protection.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning_validity_checks.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning_generic_secrets.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_private_vulnerability_reporting.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_enforcement.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_advanced_security.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_dependency_graph.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_dependency_graph_autosubmit_action.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_dependency_graph_autosubmit_action_options.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_dependabot_alerts.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_dependabot_security_updates.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_code_scanning_default_setup.dart';
import 'package:github/model/code-scanning-default-setup-options.dart';
import 'package:github/model/code-scanning-default-setup-options_runner_type.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_code_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning_push_protection.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning_validity_checks.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning_generic_secrets.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_private_vulnerability_reporting.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_enforcement.dart';
@immutable
class CodeSecurity&#x2F;updateEnterpriseConfigurationRequest {
    CodeSecurity&#x2F;updateEnterpriseConfigurationRequest(
        {  this.name, this.description, this.advanced_security, this.dependency_graph, this.dependency_graph_autosubmit_action, this.dependency_graph_autosubmit_action_options, this.dependabot_alerts, this.dependabot_security_updates, this.code_scanning_default_setup, this.code_scanning_default_setup_options, this.code_scanning_delegated_alert_dismissal = CodeSecurity/updateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal.disabled, this.secret_scanning, this.secret_scanning_push_protection, this.secret_scanning_validity_checks, this.secret_scanning_non_provider_patterns, this.secret_scanning_generic_secrets = CodeSecurity/updateEnterpriseConfigurationRequestSecretScanningGenericSecrets.disabled, this.secret_scanning_delegated_alert_dismissal = CodeSecurity/updateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal.disabled, this.private_vulnerability_reporting, this.enforcement,
         }
    );

    factory CodeSecurity&#x2F;updateEnterpriseConfigurationRequest.fromJson(Map<String, dynamic>
        json) {
        return CodeSecurity&#x2F;updateEnterpriseConfigurationRequest(
            name: json['name'] as String? ,
            description: json['description'] as String? ,
            advanced_security: CodeSecurity/updateEnterpriseConfigurationRequestAdvancedSecurity.maybeFromJson(json['advanced_security'] as String?) ,
            dependency_graph: CodeSecurity/updateEnterpriseConfigurationRequestDependencyGraph.maybeFromJson(json['dependency_graph'] as String?) ,
            dependency_graph_autosubmit_action: CodeSecurity/updateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction.maybeFromJson(json['dependency_graph_autosubmit_action'] as String?) ,
            dependency_graph_autosubmit_action_options: CodeSecurity/updateEnterpriseConfigurationRequestDependencyGraphAutosubmitActionOptions.maybeFromJson(json['dependency_graph_autosubmit_action_options'] as Map<String, dynamic>?) ,
            dependabot_alerts: CodeSecurity/updateEnterpriseConfigurationRequestDependabotAlerts.maybeFromJson(json['dependabot_alerts'] as String?) ,
            dependabot_security_updates: CodeSecurity/updateEnterpriseConfigurationRequestDependabotSecurityUpdates.maybeFromJson(json['dependabot_security_updates'] as String?) ,
            code_scanning_default_setup: CodeSecurity/updateEnterpriseConfigurationRequestCodeScanningDefaultSetup.maybeFromJson(json['code_scanning_default_setup'] as String?) ,
            code_scanning_default_setup_options: Code-scanning-default-setup-options.maybeFromJson(json['code_scanning_default_setup_options'] as Map<String, dynamic>?) ,
            code_scanning_delegated_alert_dismissal: CodeSecurity/updateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal.maybeFromJson(json['code_scanning_delegated_alert_dismissal'] as String?) ,
            secret_scanning: CodeSecurity/updateEnterpriseConfigurationRequestSecretScanning.maybeFromJson(json['secret_scanning'] as String?) ,
            secret_scanning_push_protection: CodeSecurity/updateEnterpriseConfigurationRequestSecretScanningPushProtection.maybeFromJson(json['secret_scanning_push_protection'] as String?) ,
            secret_scanning_validity_checks: CodeSecurity/updateEnterpriseConfigurationRequestSecretScanningValidityChecks.maybeFromJson(json['secret_scanning_validity_checks'] as String?) ,
            secret_scanning_non_provider_patterns: CodeSecurity/updateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns.maybeFromJson(json['secret_scanning_non_provider_patterns'] as String?) ,
            secret_scanning_generic_secrets: CodeSecurity/updateEnterpriseConfigurationRequestSecretScanningGenericSecrets.maybeFromJson(json['secret_scanning_generic_secrets'] as String?) ,
            secret_scanning_delegated_alert_dismissal: CodeSecurity/updateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal.maybeFromJson(json['secret_scanning_delegated_alert_dismissal'] as String?) ,
            private_vulnerability_reporting: CodeSecurity/updateEnterpriseConfigurationRequestPrivateVulnerabilityReporting.maybeFromJson(json['private_vulnerability_reporting'] as String?) ,
            enforcement: CodeSecurity/updateEnterpriseConfigurationRequestEnforcement.maybeFromJson(json['enforcement'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;updateEnterpriseConfigurationRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;updateEnterpriseConfigurationRequest.fromJson(json);
    }

    final  String? name;
    final  String? description;
    final  CodeSecurity/updateEnterpriseConfigurationRequestAdvancedSecurity? advanced_security;
    final  CodeSecurity/updateEnterpriseConfigurationRequestDependencyGraph? dependency_graph;
    final  CodeSecurity/updateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction? dependency_graph_autosubmit_action;
    final  CodeSecurity/updateEnterpriseConfigurationRequestDependencyGraphAutosubmitActionOptions? dependency_graph_autosubmit_action_options;
    final  CodeSecurity/updateEnterpriseConfigurationRequestDependabotAlerts? dependabot_alerts;
    final  CodeSecurity/updateEnterpriseConfigurationRequestDependabotSecurityUpdates? dependabot_security_updates;
    final  CodeSecurity/updateEnterpriseConfigurationRequestCodeScanningDefaultSetup? code_scanning_default_setup;
    final  Code-scanning-default-setup-options? code_scanning_default_setup_options;
    final  CodeSecurity/updateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal? code_scanning_delegated_alert_dismissal;
    final  CodeSecurity/updateEnterpriseConfigurationRequestSecretScanning? secret_scanning;
    final  CodeSecurity/updateEnterpriseConfigurationRequestSecretScanningPushProtection? secret_scanning_push_protection;
    final  CodeSecurity/updateEnterpriseConfigurationRequestSecretScanningValidityChecks? secret_scanning_validity_checks;
    final  CodeSecurity/updateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns? secret_scanning_non_provider_patterns;
    final  CodeSecurity/updateEnterpriseConfigurationRequestSecretScanningGenericSecrets? secret_scanning_generic_secrets;
    final  CodeSecurity/updateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal? secret_scanning_delegated_alert_dismissal;
    final  CodeSecurity/updateEnterpriseConfigurationRequestPrivateVulnerabilityReporting? private_vulnerability_reporting;
    final  CodeSecurity/updateEnterpriseConfigurationRequestEnforcement? enforcement;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'description': description,
            'advanced_security': advanced_security?.toJson(),
            'dependency_graph': dependency_graph?.toJson(),
            'dependency_graph_autosubmit_action': dependency_graph_autosubmit_action?.toJson(),
            'dependency_graph_autosubmit_action_options': dependency_graph_autosubmit_action_options?.toJson(),
            'dependabot_alerts': dependabot_alerts?.toJson(),
            'dependabot_security_updates': dependabot_security_updates?.toJson(),
            'code_scanning_default_setup': code_scanning_default_setup?.toJson(),
            'code_scanning_default_setup_options': code_scanning_default_setup_options?.toJson(),
            'code_scanning_delegated_alert_dismissal': code_scanning_delegated_alert_dismissal?.toJson(),
            'secret_scanning': secret_scanning?.toJson(),
            'secret_scanning_push_protection': secret_scanning_push_protection?.toJson(),
            'secret_scanning_validity_checks': secret_scanning_validity_checks?.toJson(),
            'secret_scanning_non_provider_patterns': secret_scanning_non_provider_patterns?.toJson(),
            'secret_scanning_generic_secrets': secret_scanning_generic_secrets?.toJson(),
            'secret_scanning_delegated_alert_dismissal': secret_scanning_delegated_alert_dismissal?.toJson(),
            'private_vulnerability_reporting': private_vulnerability_reporting?.toJson(),
            'enforcement': enforcement?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          description,
          advanced_security,
          dependency_graph,
          dependency_graph_autosubmit_action,
          dependency_graph_autosubmit_action_options,
          dependabot_alerts,
          dependabot_security_updates,
          code_scanning_default_setup,
          code_scanning_default_setup_options,
          code_scanning_delegated_alert_dismissal,
          secret_scanning,
          secret_scanning_push_protection,
          secret_scanning_validity_checks,
          secret_scanning_non_provider_patterns,
          secret_scanning_generic_secrets,
          secret_scanning_delegated_alert_dismissal,
          private_vulnerability_reporting,
          enforcement,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is CodeSecurity&#x2F;updateEnterpriseConfigurationRequest
            && name == other.name
            && description == other.description
            && advanced_security == other.advanced_security
            && dependency_graph == other.dependency_graph
            && dependency_graph_autosubmit_action == other.dependency_graph_autosubmit_action
            && dependency_graph_autosubmit_action_options == other.dependency_graph_autosubmit_action_options
            && dependabot_alerts == other.dependabot_alerts
            && dependabot_security_updates == other.dependabot_security_updates
            && code_scanning_default_setup == other.code_scanning_default_setup
            && code_scanning_default_setup_options == other.code_scanning_default_setup_options
            && code_scanning_delegated_alert_dismissal == other.code_scanning_delegated_alert_dismissal
            && secret_scanning == other.secret_scanning
            && secret_scanning_push_protection == other.secret_scanning_push_protection
            && secret_scanning_validity_checks == other.secret_scanning_validity_checks
            && secret_scanning_non_provider_patterns == other.secret_scanning_non_provider_patterns
            && secret_scanning_generic_secrets == other.secret_scanning_generic_secrets
            && secret_scanning_delegated_alert_dismissal == other.secret_scanning_delegated_alert_dismissal
            && private_vulnerability_reporting == other.private_vulnerability_reporting
            && enforcement == other.enforcement
        ;
    }
}
