import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_advanced_security.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_dependency_graph.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_dependency_graph_autosubmit_action.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_dependency_graph_autosubmit_action_options.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_dependabot_alerts.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_dependabot_security_updates.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_code_scanning_default_setup.dart';
import 'package:github/model/code-scanning-default-setup-options.dart';
import 'package:github/model/code-scanning-default-setup-options_runner_type.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_code_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_secret_scanning.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_secret_scanning_push_protection.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_secret_scanning_validity_checks.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_secret_scanning_generic_secrets.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_private_vulnerability_reporting.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_enforcement.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_advanced_security.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_dependency_graph.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_dependency_graph_autosubmit_action.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_dependency_graph_autosubmit_action_options.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_dependabot_alerts.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_dependabot_security_updates.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_code_scanning_default_setup.dart';
import 'package:github/model/code-scanning-default-setup-options.dart';
import 'package:github/model/code-scanning-default-setup-options_runner_type.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_code_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_secret_scanning.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_secret_scanning_push_protection.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_secret_scanning_validity_checks.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_secret_scanning_generic_secrets.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_private_vulnerability_reporting.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_enforcement.dart';
@immutable
class CodeSecurity&#x2F;createConfigurationForEnterpriseRequest {
    CodeSecurity&#x2F;createConfigurationForEnterpriseRequest(
        { required this.name,required this.description, this.advanced_security = CodeSecurity/createConfigurationForEnterpriseRequestAdvancedSecurity.disabled, this.dependency_graph = CodeSecurity/createConfigurationForEnterpriseRequestDependencyGraph.enabled, this.dependency_graph_autosubmit_action = CodeSecurity/createConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction.disabled, this.dependency_graph_autosubmit_action_options, this.dependabot_alerts = CodeSecurity/createConfigurationForEnterpriseRequestDependabotAlerts.disabled, this.dependabot_security_updates = CodeSecurity/createConfigurationForEnterpriseRequestDependabotSecurityUpdates.disabled, this.code_scanning_default_setup = CodeSecurity/createConfigurationForEnterpriseRequestCodeScanningDefaultSetup.disabled, this.code_scanning_default_setup_options, this.code_scanning_delegated_alert_dismissal = CodeSecurity/createConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal.disabled, this.secret_scanning = CodeSecurity/createConfigurationForEnterpriseRequestSecretScanning.disabled, this.secret_scanning_push_protection = CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningPushProtection.disabled, this.secret_scanning_validity_checks = CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningValidityChecks.disabled, this.secret_scanning_non_provider_patterns = CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns.disabled, this.secret_scanning_generic_secrets = CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningGenericSecrets.disabled, this.secret_scanning_delegated_alert_dismissal = CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal.disabled, this.private_vulnerability_reporting = CodeSecurity/createConfigurationForEnterpriseRequestPrivateVulnerabilityReporting.disabled, this.enforcement = CodeSecurity/createConfigurationForEnterpriseRequestEnforcement.enforced,
         }
    );

    factory CodeSecurity&#x2F;createConfigurationForEnterpriseRequest.fromJson(Map<String, dynamic>
        json) {
        return CodeSecurity&#x2F;createConfigurationForEnterpriseRequest(
            name: json['name'] as String ,
            description: json['description'] as String ,
            advanced_security: CodeSecurity/createConfigurationForEnterpriseRequestAdvancedSecurity.maybeFromJson(json['advanced_security'] as String?) ,
            dependency_graph: CodeSecurity/createConfigurationForEnterpriseRequestDependencyGraph.maybeFromJson(json['dependency_graph'] as String?) ,
            dependency_graph_autosubmit_action: CodeSecurity/createConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction.maybeFromJson(json['dependency_graph_autosubmit_action'] as String?) ,
            dependency_graph_autosubmit_action_options: CodeSecurity/createConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions.maybeFromJson(json['dependency_graph_autosubmit_action_options'] as Map<String, dynamic>?) ,
            dependabot_alerts: CodeSecurity/createConfigurationForEnterpriseRequestDependabotAlerts.maybeFromJson(json['dependabot_alerts'] as String?) ,
            dependabot_security_updates: CodeSecurity/createConfigurationForEnterpriseRequestDependabotSecurityUpdates.maybeFromJson(json['dependabot_security_updates'] as String?) ,
            code_scanning_default_setup: CodeSecurity/createConfigurationForEnterpriseRequestCodeScanningDefaultSetup.maybeFromJson(json['code_scanning_default_setup'] as String?) ,
            code_scanning_default_setup_options: Code-scanning-default-setup-options.maybeFromJson(json['code_scanning_default_setup_options'] as Map<String, dynamic>?) ,
            code_scanning_delegated_alert_dismissal: CodeSecurity/createConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal.maybeFromJson(json['code_scanning_delegated_alert_dismissal'] as String?) ,
            secret_scanning: CodeSecurity/createConfigurationForEnterpriseRequestSecretScanning.maybeFromJson(json['secret_scanning'] as String?) ,
            secret_scanning_push_protection: CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningPushProtection.maybeFromJson(json['secret_scanning_push_protection'] as String?) ,
            secret_scanning_validity_checks: CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningValidityChecks.maybeFromJson(json['secret_scanning_validity_checks'] as String?) ,
            secret_scanning_non_provider_patterns: CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns.maybeFromJson(json['secret_scanning_non_provider_patterns'] as String?) ,
            secret_scanning_generic_secrets: CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningGenericSecrets.maybeFromJson(json['secret_scanning_generic_secrets'] as String?) ,
            secret_scanning_delegated_alert_dismissal: CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal.maybeFromJson(json['secret_scanning_delegated_alert_dismissal'] as String?) ,
            private_vulnerability_reporting: CodeSecurity/createConfigurationForEnterpriseRequestPrivateVulnerabilityReporting.maybeFromJson(json['private_vulnerability_reporting'] as String?) ,
            enforcement: CodeSecurity/createConfigurationForEnterpriseRequestEnforcement.maybeFromJson(json['enforcement'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;createConfigurationForEnterpriseRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;createConfigurationForEnterpriseRequest.fromJson(json);
    }

    final String  name;
    final String  description;
    final  CodeSecurity/createConfigurationForEnterpriseRequestAdvancedSecurity? advanced_security;
    final  CodeSecurity/createConfigurationForEnterpriseRequestDependencyGraph? dependency_graph;
    final  CodeSecurity/createConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction? dependency_graph_autosubmit_action;
    final  CodeSecurity/createConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions? dependency_graph_autosubmit_action_options;
    final  CodeSecurity/createConfigurationForEnterpriseRequestDependabotAlerts? dependabot_alerts;
    final  CodeSecurity/createConfigurationForEnterpriseRequestDependabotSecurityUpdates? dependabot_security_updates;
    final  CodeSecurity/createConfigurationForEnterpriseRequestCodeScanningDefaultSetup? code_scanning_default_setup;
    final  Code-scanning-default-setup-options? code_scanning_default_setup_options;
    final  CodeSecurity/createConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal? code_scanning_delegated_alert_dismissal;
    final  CodeSecurity/createConfigurationForEnterpriseRequestSecretScanning? secret_scanning;
    final  CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningPushProtection? secret_scanning_push_protection;
    final  CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningValidityChecks? secret_scanning_validity_checks;
    final  CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns? secret_scanning_non_provider_patterns;
    final  CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningGenericSecrets? secret_scanning_generic_secrets;
    final  CodeSecurity/createConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal? secret_scanning_delegated_alert_dismissal;
    final  CodeSecurity/createConfigurationForEnterpriseRequestPrivateVulnerabilityReporting? private_vulnerability_reporting;
    final  CodeSecurity/createConfigurationForEnterpriseRequestEnforcement? enforcement;


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
        return other is CodeSecurity&#x2F;createConfigurationForEnterpriseRequest
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
