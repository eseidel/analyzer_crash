import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration.dart';
import 'package:github/model/code-security-configuration_target_type.dart';
import 'package:github/model/code-security-configuration_advanced_security.dart';
import 'package:github/model/code-security-configuration_dependency_graph.dart';
import 'package:github/model/code-security-configuration_dependency_graph_autosubmit_action.dart';
import 'package:github/model/code-security-configuration_dependency_graph_autosubmit_action_options.dart';
import 'package:github/model/code-security-configuration_dependabot_alerts.dart';
import 'package:github/model/code-security-configuration_dependabot_security_updates.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup_options.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup_options_runner_type.dart';
import 'package:github/model/code-security-configuration_code_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code-security-configuration_secret_scanning.dart';
import 'package:github/model/code-security-configuration_secret_scanning_push_protection.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:github/model/code-security-configuration_secret_scanning_validity_checks.dart';
import 'package:github/model/code-security-configuration_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code-security-configuration_secret_scanning_generic_secrets.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code-security-configuration_private_vulnerability_reporting.dart';
import 'package:github/model/code-security-configuration_enforcement.dart';
import 'package:github/model/code-security-configuration.dart';
import 'package:github/model/code-security-configuration_target_type.dart';
import 'package:github/model/code-security-configuration_advanced_security.dart';
import 'package:github/model/code-security-configuration_dependency_graph.dart';
import 'package:github/model/code-security-configuration_dependency_graph_autosubmit_action.dart';
import 'package:github/model/code-security-configuration_dependency_graph_autosubmit_action_options.dart';
import 'package:github/model/code-security-configuration_dependabot_alerts.dart';
import 'package:github/model/code-security-configuration_dependabot_security_updates.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup_options.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup_options_runner_type.dart';
import 'package:github/model/code-security-configuration_code_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code-security-configuration_secret_scanning.dart';
import 'package:github/model/code-security-configuration_secret_scanning_push_protection.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:github/model/code-security-configuration_secret_scanning_validity_checks.dart';
import 'package:github/model/code-security-configuration_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code-security-configuration_secret_scanning_generic_secrets.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code-security-configuration_private_vulnerability_reporting.dart';
import 'package:github/model/code-security-configuration_enforcement.dart';
@immutable
class Code-security-configuration {
    Code-security-configuration(
        {  this.id, this.name, this.target_type, this.description, this.advanced_security, this.dependency_graph, this.dependency_graph_autosubmit_action, this.dependency_graph_autosubmit_action_options, this.dependabot_alerts, this.dependabot_security_updates, this.code_scanning_default_setup, this.code_scanning_default_setup_options, this.code_scanning_delegated_alert_dismissal, this.secret_scanning, this.secret_scanning_push_protection, this.secret_scanning_delegated_bypass, this.secret_scanning_delegated_bypass_options, this.secret_scanning_validity_checks, this.secret_scanning_non_provider_patterns, this.secret_scanning_generic_secrets, this.secret_scanning_delegated_alert_dismissal, this.private_vulnerability_reporting, this.enforcement, this.url, this.html_url, this.created_at, this.updated_at,
         }
    );

    factory Code-security-configuration.fromJson(Map<String, dynamic>
        json) {
        return Code-security-configuration(
            id: (json['id'] as int?).toInt() ,
            name: json['name'] as String? ,
            target_type: Code-security-configurationTargetType.maybeFromJson(json['target_type'] as String?) ,
            description: json['description'] as String? ,
            advanced_security: Code-security-configurationAdvancedSecurity.maybeFromJson(json['advanced_security'] as String?) ,
            dependency_graph: Code-security-configurationDependencyGraph.maybeFromJson(json['dependency_graph'] as String?) ,
            dependency_graph_autosubmit_action: Code-security-configurationDependencyGraphAutosubmitAction.maybeFromJson(json['dependency_graph_autosubmit_action'] as String?) ,
            dependency_graph_autosubmit_action_options: Code-security-configurationDependencyGraphAutosubmitActionOptions.maybeFromJson(json['dependency_graph_autosubmit_action_options'] as Map<String, dynamic>?) ,
            dependabot_alerts: Code-security-configurationDependabotAlerts.maybeFromJson(json['dependabot_alerts'] as String?) ,
            dependabot_security_updates: Code-security-configurationDependabotSecurityUpdates.maybeFromJson(json['dependabot_security_updates'] as String?) ,
            code_scanning_default_setup: Code-security-configurationCodeScanningDefaultSetup.maybeFromJson(json['code_scanning_default_setup'] as String?) ,
            code_scanning_default_setup_options: Code-security-configurationCodeScanningDefaultSetupOptions.maybeFromJson(json['code_scanning_default_setup_options'] as Map<String, dynamic>?) ,
            code_scanning_delegated_alert_dismissal: Code-security-configurationCodeScanningDelegatedAlertDismissal.maybeFromJson(json['code_scanning_delegated_alert_dismissal'] as String?) ,
            secret_scanning: Code-security-configurationSecretScanning.maybeFromJson(json['secret_scanning'] as String?) ,
            secret_scanning_push_protection: Code-security-configurationSecretScanningPushProtection.maybeFromJson(json['secret_scanning_push_protection'] as String?) ,
            secret_scanning_delegated_bypass: Code-security-configurationSecretScanningDelegatedBypass.maybeFromJson(json['secret_scanning_delegated_bypass'] as String?) ,
            secret_scanning_delegated_bypass_options: Code-security-configurationSecretScanningDelegatedBypassOptions.maybeFromJson(json['secret_scanning_delegated_bypass_options'] as Map<String, dynamic>?) ,
            secret_scanning_validity_checks: Code-security-configurationSecretScanningValidityChecks.maybeFromJson(json['secret_scanning_validity_checks'] as String?) ,
            secret_scanning_non_provider_patterns: Code-security-configurationSecretScanningNonProviderPatterns.maybeFromJson(json['secret_scanning_non_provider_patterns'] as String?) ,
            secret_scanning_generic_secrets: Code-security-configurationSecretScanningGenericSecrets.maybeFromJson(json['secret_scanning_generic_secrets'] as String?) ,
            secret_scanning_delegated_alert_dismissal: Code-security-configurationSecretScanningDelegatedAlertDismissal.maybeFromJson(json['secret_scanning_delegated_alert_dismissal'] as String?) ,
            private_vulnerability_reporting: Code-security-configurationPrivateVulnerabilityReporting.maybeFromJson(json['private_vulnerability_reporting'] as String?) ,
            enforcement: Code-security-configurationEnforcement.maybeFromJson(json['enforcement'] as String?) ,
            url: json['url'] as String? ,
            html_url: json['html_url'] as String? ,
            created_at: maybeParseDateTime(json['created_at'] as String?) ,
            updated_at: maybeParseDateTime(json['updated_at'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configuration? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configuration.fromJson(json);
    }

    final  int? id;
    final  String? name;
    final  Code-security-configurationTargetType? target_type;
    final  String? description;
    final  Code-security-configurationAdvancedSecurity? advanced_security;
    final  Code-security-configurationDependencyGraph? dependency_graph;
    final  Code-security-configurationDependencyGraphAutosubmitAction? dependency_graph_autosubmit_action;
    final  Code-security-configurationDependencyGraphAutosubmitActionOptions? dependency_graph_autosubmit_action_options;
    final  Code-security-configurationDependabotAlerts? dependabot_alerts;
    final  Code-security-configurationDependabotSecurityUpdates? dependabot_security_updates;
    final  Code-security-configurationCodeScanningDefaultSetup? code_scanning_default_setup;
    final  Code-security-configurationCodeScanningDefaultSetupOptions? code_scanning_default_setup_options;
    final  Code-security-configurationCodeScanningDelegatedAlertDismissal? code_scanning_delegated_alert_dismissal;
    final  Code-security-configurationSecretScanning? secret_scanning;
    final  Code-security-configurationSecretScanningPushProtection? secret_scanning_push_protection;
    final  Code-security-configurationSecretScanningDelegatedBypass? secret_scanning_delegated_bypass;
    final  Code-security-configurationSecretScanningDelegatedBypassOptions? secret_scanning_delegated_bypass_options;
    final  Code-security-configurationSecretScanningValidityChecks? secret_scanning_validity_checks;
    final  Code-security-configurationSecretScanningNonProviderPatterns? secret_scanning_non_provider_patterns;
    final  Code-security-configurationSecretScanningGenericSecrets? secret_scanning_generic_secrets;
    final  Code-security-configurationSecretScanningDelegatedAlertDismissal? secret_scanning_delegated_alert_dismissal;
    final  Code-security-configurationPrivateVulnerabilityReporting? private_vulnerability_reporting;
    final  Code-security-configurationEnforcement? enforcement;
    final  String? url;
    final  String? html_url;
    final  DateTime? created_at;
    final  DateTime? updated_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'target_type': target_type?.toJson(),
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
            'url': url,
            'html_url': html_url,
            'created_at': created_at?.toIso8601String(),
            'updated_at': updated_at?.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          target_type,
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
          url,
          html_url,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-security-configuration
            && id == other.id
            && name == other.name
            && target_type == other.target_type
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
            && url == other.url
            && html_url == other.html_url
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
