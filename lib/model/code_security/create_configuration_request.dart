import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/create_configuration_request.dart';
import 'package:github/model/code_security/create_configuration_request_advanced_security.dart';
import 'package:github/model/code_security/create_configuration_request_dependency_graph.dart';
import 'package:github/model/code_security/create_configuration_request_dependency_graph_autosubmit_action.dart';
import 'package:github/model/code_security/create_configuration_request_dependency_graph_autosubmit_action_options.dart';
import 'package:github/model/code_security/create_configuration_request_dependabot_alerts.dart';
import 'package:github/model/code_security/create_configuration_request_dependabot_security_updates.dart';
import 'package:github/model/code_security/create_configuration_request_code_scanning_default_setup.dart';
import 'package:github/model/code-scanning-default-setup-options.dart';
import 'package:github/model/code-scanning-default-setup-options_runner_type.dart';
import 'package:github/model/code_security/create_configuration_request_code_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_push_protection.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass_options.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_validity_checks.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_generic_secrets.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/create_configuration_request_private_vulnerability_reporting.dart';
import 'package:github/model/code_security/create_configuration_request_enforcement.dart';
import 'package:github/model/code_security/create_configuration_request.dart';
import 'package:github/model/code_security/create_configuration_request_advanced_security.dart';
import 'package:github/model/code_security/create_configuration_request_dependency_graph.dart';
import 'package:github/model/code_security/create_configuration_request_dependency_graph_autosubmit_action.dart';
import 'package:github/model/code_security/create_configuration_request_dependency_graph_autosubmit_action_options.dart';
import 'package:github/model/code_security/create_configuration_request_dependabot_alerts.dart';
import 'package:github/model/code_security/create_configuration_request_dependabot_security_updates.dart';
import 'package:github/model/code_security/create_configuration_request_code_scanning_default_setup.dart';
import 'package:github/model/code-scanning-default-setup-options.dart';
import 'package:github/model/code-scanning-default-setup-options_runner_type.dart';
import 'package:github/model/code_security/create_configuration_request_code_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_push_protection.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass_options.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_validity_checks.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_generic_secrets.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/create_configuration_request_private_vulnerability_reporting.dart';
import 'package:github/model/code_security/create_configuration_request_enforcement.dart';
@immutable
class CodeSecurity&#x2F;createConfigurationRequest {
    CodeSecurity&#x2F;createConfigurationRequest(
        { required this.name,required this.description, this.advanced_security = CodeSecurity/createConfigurationRequestAdvancedSecurity.disabled, this.dependency_graph = CodeSecurity/createConfigurationRequestDependencyGraph.enabled, this.dependency_graph_autosubmit_action = CodeSecurity/createConfigurationRequestDependencyGraphAutosubmitAction.disabled, this.dependency_graph_autosubmit_action_options, this.dependabot_alerts = CodeSecurity/createConfigurationRequestDependabotAlerts.disabled, this.dependabot_security_updates = CodeSecurity/createConfigurationRequestDependabotSecurityUpdates.disabled, this.code_scanning_default_setup = CodeSecurity/createConfigurationRequestCodeScanningDefaultSetup.disabled, this.code_scanning_default_setup_options, this.code_scanning_delegated_alert_dismissal = CodeSecurity/createConfigurationRequestCodeScanningDelegatedAlertDismissal.notSet, this.secret_scanning = CodeSecurity/createConfigurationRequestSecretScanning.disabled, this.secret_scanning_push_protection = CodeSecurity/createConfigurationRequestSecretScanningPushProtection.disabled, this.secret_scanning_delegated_bypass = CodeSecurity/createConfigurationRequestSecretScanningDelegatedBypass.disabled, this.secret_scanning_delegated_bypass_options, this.secret_scanning_validity_checks = CodeSecurity/createConfigurationRequestSecretScanningValidityChecks.disabled, this.secret_scanning_non_provider_patterns = CodeSecurity/createConfigurationRequestSecretScanningNonProviderPatterns.disabled, this.secret_scanning_generic_secrets = CodeSecurity/createConfigurationRequestSecretScanningGenericSecrets.disabled, this.secret_scanning_delegated_alert_dismissal, this.private_vulnerability_reporting = CodeSecurity/createConfigurationRequestPrivateVulnerabilityReporting.disabled, this.enforcement = CodeSecurity/createConfigurationRequestEnforcement.enforced,
         }
    );

    factory CodeSecurity&#x2F;createConfigurationRequest.fromJson(Map<String, dynamic>
        json) {
        return CodeSecurity&#x2F;createConfigurationRequest(
            name: json['name'] as String ,
            description: json['description'] as String ,
            advanced_security: CodeSecurity/createConfigurationRequestAdvancedSecurity.maybeFromJson(json['advanced_security'] as String?) ,
            dependency_graph: CodeSecurity/createConfigurationRequestDependencyGraph.maybeFromJson(json['dependency_graph'] as String?) ,
            dependency_graph_autosubmit_action: CodeSecurity/createConfigurationRequestDependencyGraphAutosubmitAction.maybeFromJson(json['dependency_graph_autosubmit_action'] as String?) ,
            dependency_graph_autosubmit_action_options: CodeSecurity/createConfigurationRequestDependencyGraphAutosubmitActionOptions.maybeFromJson(json['dependency_graph_autosubmit_action_options'] as Map<String, dynamic>?) ,
            dependabot_alerts: CodeSecurity/createConfigurationRequestDependabotAlerts.maybeFromJson(json['dependabot_alerts'] as String?) ,
            dependabot_security_updates: CodeSecurity/createConfigurationRequestDependabotSecurityUpdates.maybeFromJson(json['dependabot_security_updates'] as String?) ,
            code_scanning_default_setup: CodeSecurity/createConfigurationRequestCodeScanningDefaultSetup.maybeFromJson(json['code_scanning_default_setup'] as String?) ,
            code_scanning_default_setup_options: Code-scanning-default-setup-options.maybeFromJson(json['code_scanning_default_setup_options'] as Map<String, dynamic>?) ,
            code_scanning_delegated_alert_dismissal: CodeSecurity/createConfigurationRequestCodeScanningDelegatedAlertDismissal.maybeFromJson(json['code_scanning_delegated_alert_dismissal'] as String?) ,
            secret_scanning: CodeSecurity/createConfigurationRequestSecretScanning.maybeFromJson(json['secret_scanning'] as String?) ,
            secret_scanning_push_protection: CodeSecurity/createConfigurationRequestSecretScanningPushProtection.maybeFromJson(json['secret_scanning_push_protection'] as String?) ,
            secret_scanning_delegated_bypass: CodeSecurity/createConfigurationRequestSecretScanningDelegatedBypass.maybeFromJson(json['secret_scanning_delegated_bypass'] as String?) ,
            secret_scanning_delegated_bypass_options: CodeSecurity/createConfigurationRequestSecretScanningDelegatedBypassOptions.maybeFromJson(json['secret_scanning_delegated_bypass_options'] as Map<String, dynamic>?) ,
            secret_scanning_validity_checks: CodeSecurity/createConfigurationRequestSecretScanningValidityChecks.maybeFromJson(json['secret_scanning_validity_checks'] as String?) ,
            secret_scanning_non_provider_patterns: CodeSecurity/createConfigurationRequestSecretScanningNonProviderPatterns.maybeFromJson(json['secret_scanning_non_provider_patterns'] as String?) ,
            secret_scanning_generic_secrets: CodeSecurity/createConfigurationRequestSecretScanningGenericSecrets.maybeFromJson(json['secret_scanning_generic_secrets'] as String?) ,
            secret_scanning_delegated_alert_dismissal: CodeSecurity/createConfigurationRequestSecretScanningDelegatedAlertDismissal.maybeFromJson(json['secret_scanning_delegated_alert_dismissal'] as String?) ,
            private_vulnerability_reporting: CodeSecurity/createConfigurationRequestPrivateVulnerabilityReporting.maybeFromJson(json['private_vulnerability_reporting'] as String?) ,
            enforcement: CodeSecurity/createConfigurationRequestEnforcement.maybeFromJson(json['enforcement'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;createConfigurationRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;createConfigurationRequest.fromJson(json);
    }

    final String  name;
    final String  description;
    final  CodeSecurity/createConfigurationRequestAdvancedSecurity? advanced_security;
    final  CodeSecurity/createConfigurationRequestDependencyGraph? dependency_graph;
    final  CodeSecurity/createConfigurationRequestDependencyGraphAutosubmitAction? dependency_graph_autosubmit_action;
    final  CodeSecurity/createConfigurationRequestDependencyGraphAutosubmitActionOptions? dependency_graph_autosubmit_action_options;
    final  CodeSecurity/createConfigurationRequestDependabotAlerts? dependabot_alerts;
    final  CodeSecurity/createConfigurationRequestDependabotSecurityUpdates? dependabot_security_updates;
    final  CodeSecurity/createConfigurationRequestCodeScanningDefaultSetup? code_scanning_default_setup;
    final  Code-scanning-default-setup-options? code_scanning_default_setup_options;
    final  CodeSecurity/createConfigurationRequestCodeScanningDelegatedAlertDismissal? code_scanning_delegated_alert_dismissal;
    final  CodeSecurity/createConfigurationRequestSecretScanning? secret_scanning;
    final  CodeSecurity/createConfigurationRequestSecretScanningPushProtection? secret_scanning_push_protection;
    final  CodeSecurity/createConfigurationRequestSecretScanningDelegatedBypass? secret_scanning_delegated_bypass;
    final  CodeSecurity/createConfigurationRequestSecretScanningDelegatedBypassOptions? secret_scanning_delegated_bypass_options;
    final  CodeSecurity/createConfigurationRequestSecretScanningValidityChecks? secret_scanning_validity_checks;
    final  CodeSecurity/createConfigurationRequestSecretScanningNonProviderPatterns? secret_scanning_non_provider_patterns;
    final  CodeSecurity/createConfigurationRequestSecretScanningGenericSecrets? secret_scanning_generic_secrets;
    final  CodeSecurity/createConfigurationRequestSecretScanningDelegatedAlertDismissal? secret_scanning_delegated_alert_dismissal;
    final  CodeSecurity/createConfigurationRequestPrivateVulnerabilityReporting? private_vulnerability_reporting;
    final  CodeSecurity/createConfigurationRequestEnforcement? enforcement;


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
            'secret_scanning_delegated_bypass': secret_scanning_delegated_bypass?.toJson(),
            'secret_scanning_delegated_bypass_options': secret_scanning_delegated_bypass_options?.toJson(),
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
          secret_scanning_delegated_bypass,
          secret_scanning_delegated_bypass_options,
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
        return other is CodeSecurity&#x2F;createConfigurationRequest
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
            && secret_scanning_delegated_bypass == other.secret_scanning_delegated_bypass
            && secret_scanning_delegated_bypass_options == other.secret_scanning_delegated_bypass_options
            && secret_scanning_validity_checks == other.secret_scanning_validity_checks
            && secret_scanning_non_provider_patterns == other.secret_scanning_non_provider_patterns
            && secret_scanning_generic_secrets == other.secret_scanning_generic_secrets
            && secret_scanning_delegated_alert_dismissal == other.secret_scanning_delegated_alert_dismissal
            && private_vulnerability_reporting == other.private_vulnerability_reporting
            && enforcement == other.enforcement
        ;
    }
}
