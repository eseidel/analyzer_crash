import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration-for-repository.dart';
import 'package:github/model/code-security-configuration-for-repository_status.dart';
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
import 'package:github/model/code-security-configuration-for-repository.dart';
import 'package:github/model/code-security-configuration-for-repository_status.dart';
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
class Code-security-configuration-for-repository {
    Code-security-configuration-for-repository(
        {  this.status, this.configuration,
         }
    );

    factory Code-security-configuration-for-repository.fromJson(Map<String, dynamic>
        json) {
        return Code-security-configuration-for-repository(
            status: Code-security-configuration-for-repositoryStatus.maybeFromJson(json['status'] as String?) ,
            configuration: Code-security-configuration.maybeFromJson(json['configuration'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configuration-for-repository? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configuration-for-repository.fromJson(json);
    }

    final  Code-security-configuration-for-repositoryStatus? status;
    final  Code-security-configuration? configuration;


    Map<String, dynamic> toJson() {
        return {
            'status': status?.toJson(),
            'configuration': configuration?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          status,
          configuration,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-security-configuration-for-repository
            && status == other.status
            && configuration == other.configuration
        ;
    }
}
