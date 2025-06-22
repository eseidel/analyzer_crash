import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
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
import 'package:github/model/code-security-default-configurations_inner.dart';
import 'package:github/model/code-security-default-configurations_inner_default_for_new_repos.dart';
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
import 'package:github/model/code-security-default-configurations_inner.dart';
import 'package:github/model/code-security-default-configurations_inner_default_for_new_repos.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
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
import 'package:github/model/code_security/attach_enterprise_configuration_request.dart';
import 'package:github/model/code_security/attach_enterprise_configuration_request_scope.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/code_security/set_configuration_as_default_for_enterprise_request.dart';
import 'package:github/model/code_security/set_configuration_as_default_for_enterprise_request_default_for_new_repos.dart';
import 'package:github/model/code_security/set_configuration_as_default_for_enterprise200_response.dart';
import 'package:github/model/code_security/set_configuration_as_default_for_enterprise200_response_default_for_new_repos.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/code_security/set_configuration_as_default_for_enterprise200_response.dart';
import 'package:github/model/code_security/set_configuration_as_default_for_enterprise200_response_default_for_new_repos.dart';
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
import 'package:github/model/code-security-configuration-repositories.dart';
import 'package:github/model/code-security-configuration-repositories_status.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/code-security-configuration-repositories.dart';
import 'package:github/model/code-security-configuration-repositories_status.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/code_security/get_configurations_for_org_parameter1.dart';
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
import 'package:github/model/code-security-default-configurations_inner.dart';
import 'package:github/model/code-security-default-configurations_inner_default_for_new_repos.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/code-security-default-configurations_inner.dart';
import 'package:github/model/code-security-default-configurations_inner_default_for_new_repos.dart';
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
import 'package:github/model/code_security/detach_configuration_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/code_security/update_configuration_request.dart';
import 'package:github/model/code_security/update_configuration_request_advanced_security.dart';
import 'package:github/model/code_security/update_configuration_request_dependency_graph.dart';
import 'package:github/model/code_security/update_configuration_request_dependency_graph_autosubmit_action.dart';
import 'package:github/model/code_security/update_configuration_request_dependency_graph_autosubmit_action_options.dart';
import 'package:github/model/code_security/update_configuration_request_dependabot_alerts.dart';
import 'package:github/model/code_security/update_configuration_request_dependabot_security_updates.dart';
import 'package:github/model/code_security/update_configuration_request_code_scanning_default_setup.dart';
import 'package:github/model/code-scanning-default-setup-options.dart';
import 'package:github/model/code-scanning-default-setup-options_runner_type.dart';
import 'package:github/model/code_security/update_configuration_request_code_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_push_protection.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_delegated_bypass.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_delegated_bypass_options.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_validity_checks.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_generic_secrets.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github/model/code_security/update_configuration_request_private_vulnerability_reporting.dart';
import 'package:github/model/code_security/update_configuration_request_enforcement.dart';
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
import 'package:github/model/code_security/update_configuration_response.dart';
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
import 'package:github/model/code_security/attach_configuration_request.dart';
import 'package:github/model/code_security/attach_configuration_request_scope.dart';
import 'package:github/model/code_security/set_configuration_as_default_request.dart';
import 'package:github/model/code_security/set_configuration_as_default_request_default_for_new_repos.dart';
import 'package:github/model/code_security/set_configuration_as_default200_response.dart';
import 'package:github/model/code_security/set_configuration_as_default200_response_default_for_new_repos.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/code_security/set_configuration_as_default200_response.dart';
import 'package:github/model/code_security/set_configuration_as_default200_response_default_for_new_repos.dart';
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
import 'package:github/model/code-security-configuration-repositories.dart';
import 'package:github/model/code-security-configuration-repositories_status.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/code-security-configuration-repositories.dart';
import 'package:github/model/code-security-configuration-repositories_status.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/code_security/get_configuration_for_repository_response.dart';
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
class Code-securityApi {
    Code-securityApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Code-security-configuration>> codeSecurity/getConfigurationsForEnterprise(
        String enterprise,
        { int? perPage = 30,String? before,String? after, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/enterprises/{enterprise}/code-security/configurations'
            .replaceAll('{enterprise}', "${ enterprise }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Code-security-configuration>((e) => Code-security-configuration.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/getConfigurationsForEnterprise');
    }
    Future<Code-security-configuration> codeSecurity/createConfigurationForEnterprise(
        String enterprise,
        CodeSecurity/createConfigurationForEnterpriseRequest codeSecurity/createConfigurationForEnterpriseRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/enterprises/{enterprise}/code-security/configurations'
            .replaceAll('{enterprise}', "${ enterprise }")
            ,
            body: codeSecurity/createConfigurationForEnterpriseRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-security-configuration.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/createConfigurationForEnterprise');
    }
    Future<List<Code-security-default-configurationsInner>> codeSecurity/getDefaultConfigurationsForEnterprise(
        String enterprise,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/enterprises/{enterprise}/code-security/configurations/defaults'
            .replaceAll('{enterprise}', "${ enterprise }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Code-security-default-configurationsInner>((e) => Code-security-default-configurationsInner.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/getDefaultConfigurationsForEnterprise');
    }
    Future<Code-security-configuration> codeSecurity/getSingleConfigurationForEnterprise(
        String enterprise,
        int configurationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/enterprises/{enterprise}/code-security/configurations/{configuration_id}'
            .replaceAll('{enterprise}', "${ enterprise }")
                        .replaceAll('{configuration_id}', "${ configurationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-security-configuration.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/getSingleConfigurationForEnterprise');
    }
    Future<void> codeSecurity/deleteConfigurationForEnterprise(
        String enterprise,
        int configurationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/enterprises/{enterprise}/code-security/configurations/{configuration_id}'
            .replaceAll('{enterprise}', "${ enterprise }")
                        .replaceAll('{configuration_id}', "${ configurationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/deleteConfigurationForEnterprise');
    }
    Future<Code-security-configuration> codeSecurity/updateEnterpriseConfiguration(
        String enterprise,
        int configurationId,
        CodeSecurity/updateEnterpriseConfigurationRequest codeSecurity/updateEnterpriseConfigurationRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/enterprises/{enterprise}/code-security/configurations/{configuration_id}'
            .replaceAll('{enterprise}', "${ enterprise }")
                        .replaceAll('{configuration_id}', "${ configurationId }")
            ,
            body: codeSecurity/updateEnterpriseConfigurationRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-security-configuration.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/updateEnterpriseConfiguration');
    }
    Future<dynamic> codeSecurity/attachEnterpriseConfiguration(
        String enterprise,
        int configurationId,
        CodeSecurity/attachEnterpriseConfigurationRequest codeSecurity/attachEnterpriseConfigurationRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/enterprises/{enterprise}/code-security/configurations/{configuration_id}/attach'
            .replaceAll('{enterprise}', "${ enterprise }")
                        .replaceAll('{configuration_id}', "${ configurationId }")
            ,
            body: codeSecurity/attachEnterpriseConfigurationRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/attachEnterpriseConfiguration');
    }
    Future<CodeSecurity/setConfigurationAsDefaultForEnterprise200Response> codeSecurity/setConfigurationAsDefaultForEnterprise(
        String enterprise,
        int configurationId,
        CodeSecurity/setConfigurationAsDefaultForEnterpriseRequest codeSecurity/setConfigurationAsDefaultForEnterpriseRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/enterprises/{enterprise}/code-security/configurations/{configuration_id}/defaults'
            .replaceAll('{enterprise}', "${ enterprise }")
                        .replaceAll('{configuration_id}', "${ configurationId }")
            ,
            body: codeSecurity/setConfigurationAsDefaultForEnterpriseRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return CodeSecurity/setConfigurationAsDefaultForEnterprise200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/setConfigurationAsDefaultForEnterprise');
    }
    Future<List<Code-security-configuration-repositories>> codeSecurity/getRepositoriesForEnterpriseConfiguration(
        String enterprise,
        int configurationId,
        { int? perPage = 30,String? before,String? after,String? status = all, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/enterprises/{enterprise}/code-security/configurations/{configuration_id}/repositories'
            .replaceAll('{enterprise}', "${ enterprise }")
                        .replaceAll('{configuration_id}', "${ configurationId }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'status': ?status.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Code-security-configuration-repositories>((e) => Code-security-configuration-repositories.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/getRepositoriesForEnterpriseConfiguration');
    }
    Future<List<Code-security-configuration>> codeSecurity/getConfigurationsForOrg(
        String org,
        { CodeSecurity/getConfigurationsForOrgParameter1? targetType = CodeSecurity/getConfigurationsForOrgParameter1.all,int? perPage = 30,String? before,String? after, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/code-security/configurations'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'target_type': ?targetType?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Code-security-configuration>((e) => Code-security-configuration.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/getConfigurationsForOrg');
    }
    Future<Code-security-configuration> codeSecurity/createConfiguration(
        String org,
        CodeSecurity/createConfigurationRequest codeSecurity/createConfigurationRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/code-security/configurations'
            .replaceAll('{org}', "${ org }")
            ,
            body: codeSecurity/createConfigurationRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-security-configuration.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/createConfiguration');
    }
    Future<List<Code-security-default-configurationsInner>> codeSecurity/getDefaultConfigurations(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/code-security/configurations/defaults'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Code-security-default-configurationsInner>((e) => Code-security-default-configurationsInner.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/getDefaultConfigurations');
    }
    Future<void> codeSecurity/detachConfiguration(
        String org,
        CodeSecurity/detachConfigurationRequest codeSecurity/detachConfigurationRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/code-security/configurations/detach'
            .replaceAll('{org}', "${ org }")
            ,
            body: codeSecurity/detachConfigurationRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/detachConfiguration');
    }
    Future<Code-security-configuration> codeSecurity/getConfiguration(
        String org,
        int configurationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/code-security/configurations/{configuration_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{configuration_id}', "${ configurationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-security-configuration.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/getConfiguration');
    }
    Future<void> codeSecurity/deleteConfiguration(
        String org,
        int configurationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/code-security/configurations/{configuration_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{configuration_id}', "${ configurationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/deleteConfiguration');
    }
    Future<CodeSecurity/updateConfigurationResponse> codeSecurity/updateConfiguration(
        String org,
        int configurationId,
        CodeSecurity/updateConfigurationRequest codeSecurity/updateConfigurationRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/code-security/configurations/{configuration_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{configuration_id}', "${ configurationId }")
            ,
            body: codeSecurity/updateConfigurationRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return CodeSecurity/updateConfigurationResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/updateConfiguration');
    }
    Future<dynamic> codeSecurity/attachConfiguration(
        String org,
        int configurationId,
        CodeSecurity/attachConfigurationRequest codeSecurity/attachConfigurationRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/code-security/configurations/{configuration_id}/attach'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{configuration_id}', "${ configurationId }")
            ,
            body: codeSecurity/attachConfigurationRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/attachConfiguration');
    }
    Future<CodeSecurity/setConfigurationAsDefault200Response> codeSecurity/setConfigurationAsDefault(
        String org,
        int configurationId,
        CodeSecurity/setConfigurationAsDefaultRequest codeSecurity/setConfigurationAsDefaultRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/code-security/configurations/{configuration_id}/defaults'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{configuration_id}', "${ configurationId }")
            ,
            body: codeSecurity/setConfigurationAsDefaultRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return CodeSecurity/setConfigurationAsDefault200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/setConfigurationAsDefault');
    }
    Future<List<Code-security-configuration-repositories>> codeSecurity/getRepositoriesForConfiguration(
        String org,
        int configurationId,
        { int? perPage = 30,String? before,String? after,String? status = all, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/code-security/configurations/{configuration_id}/repositories'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{configuration_id}', "${ configurationId }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'status': ?status.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Code-security-configuration-repositories>((e) => Code-security-configuration-repositories.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/getRepositoriesForConfiguration');
    }
    Future<CodeSecurity/getConfigurationForRepositoryResponse> codeSecurity/getConfigurationForRepository(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-security-configuration'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return CodeSecurity/getConfigurationForRepositoryResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeSecurity/getConfigurationForRepository');
    }
}
