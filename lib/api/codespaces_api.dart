import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/codespaces/list_in_organization200_response.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/list_in_organization200_response.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespaces/set_codespaces_access_request.dart';
import 'package:github/model/codespaces/set_codespaces_access_request_visibility.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/set_codespaces_access_users_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/delete_codespaces_access_users_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/list_org_secrets200_response.dart';
import 'package:github/model/codespaces-org-secret.dart';
import 'package:github/model/codespaces-org-secret_visibility.dart';
import 'package:github/model/codespaces/list_org_secrets200_response.dart';
import 'package:github/model/codespaces-org-secret.dart';
import 'package:github/model/codespaces-org-secret_visibility.dart';
import 'package:github/model/codespaces-public-key.dart';
import 'package:github/model/codespaces-public-key.dart';
import 'package:github/model/codespaces-org-secret.dart';
import 'package:github/model/codespaces-org-secret_visibility.dart';
import 'package:github/model/codespaces-org-secret.dart';
import 'package:github/model/codespaces-org-secret_visibility.dart';
import 'package:github/model/codespaces/create_or_update_org_secret_request.dart';
import 'package:github/model/codespaces/create_or_update_org_secret_request_visibility.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/codespaces/create_or_update_org_secret_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/list_selected_repos_for_org_secret200_response.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/list_selected_repos_for_org_secret200_response.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/codespaces/set_selected_repos_for_org_secret_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/codespaces/get_codespaces_for_user_in_org200_response.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/get_codespaces_for_user_in_org200_response.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespaces/list_in_repository_for_authenticated_user200_response.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/list_in_repository_for_authenticated_user200_response.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespaces/create_with_repo_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/create_with_repo_for_authenticated_user_request_geo.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespaces/list_devcontainers_in_repository_for_authenticated_user200_response.dart';
import 'package:github/model/codespaces/list_devcontainers_in_repository_for_authenticated_user200_response_devcontainers_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/list_devcontainers_in_repository_for_authenticated_user200_response.dart';
import 'package:github/model/codespaces/list_devcontainers_in_repository_for_authenticated_user200_response_devcontainers_inner.dart';
import 'package:github/model/codespaces/repo_machines_for_authenticated_user200_response.dart';
import 'package:github/model/codespace-machine.dart';
import 'package:github/model/codespace-machine_prebuild_availability.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/repo_machines_for_authenticated_user200_response.dart';
import 'package:github/model/codespace-machine.dart';
import 'package:github/model/codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespaces/pre_flight_with_repo_for_authenticated_user200_response.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/codespaces/pre_flight_with_repo_for_authenticated_user200_response_defaults.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/pre_flight_with_repo_for_authenticated_user200_response.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/codespaces/pre_flight_with_repo_for_authenticated_user200_response_defaults.dart';
import 'package:github/model/codespaces-permissions-check-for-devcontainer.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/codespaces-permissions-check-for-devcontainer.dart';
import 'package:github/model/codespaces/list_repo_secrets200_response.dart';
import 'package:github/model/repo-codespaces-secret.dart';
import 'package:github/model/codespaces/list_repo_secrets200_response.dart';
import 'package:github/model/repo-codespaces-secret.dart';
import 'package:github/model/codespaces-public-key.dart';
import 'package:github/model/codespaces-public-key.dart';
import 'package:github/model/repo-codespaces-secret.dart';
import 'package:github/model/repo-codespaces-secret.dart';
import 'package:github/model/codespaces/create_or_update_repo_secret_request.dart';
import 'package:github/model/codespaces/create_or_update_repo_secret_response.dart';
import 'package:github/model/codespaces/create_with_pr_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/create_with_pr_for_authenticated_user_request_geo.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespaces/list_for_authenticated_user200_response.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/list_for_authenticated_user200_response.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request_geo.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request_pull_request.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request_geo.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespaces/list_secrets_for_authenticated_user200_response.dart';
import 'package:github/model/codespaces-secret.dart';
import 'package:github/model/codespaces-secret_visibility.dart';
import 'package:github/model/codespaces/list_secrets_for_authenticated_user200_response.dart';
import 'package:github/model/codespaces-secret.dart';
import 'package:github/model/codespaces-secret_visibility.dart';
import 'package:github/model/codespaces-user-public-key.dart';
import 'package:github/model/codespaces-user-public-key.dart';
import 'package:github/model/codespaces-secret.dart';
import 'package:github/model/codespaces-secret_visibility.dart';
import 'package:github/model/codespaces-secret.dart';
import 'package:github/model/codespaces-secret_visibility.dart';
import 'package:github/model/codespaces/create_or_update_secret_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/create_or_update_secret_for_authenticated_user_request_selected_repository_ids_inner.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/create_or_update_secret_for_authenticated_user_response.dart';
import 'package:github/model/codespaces/list_repositories_for_secret_for_authenticated_user200_response.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/list_repositories_for_secret_for_authenticated_user200_response.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/codespaces/set_repositories_for_secret_for_authenticated_user_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/update_for_authenticated_user_request.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespace-export-details.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/codespace-export-details.dart';
import 'package:github/model/codespace-export-details.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespace-export-details.dart';
import 'package:github/model/codespaces/codespace_machines_for_authenticated_user200_response.dart';
import 'package:github/model/codespace-machine.dart';
import 'package:github/model/codespace-machine_prebuild_availability.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespaces/codespace_machines_for_authenticated_user200_response.dart';
import 'package:github/model/codespace-machine.dart';
import 'package:github/model/codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespaces/publish_for_authenticated_user_request.dart';
import 'package:github/model/codespace-with-full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace-with-full-repository_state.dart';
import 'package:github/model/codespace-with-full-repository_git_status.dart';
import 'package:github/model/codespace-with-full-repository_location.dart';
import 'package:github/model/codespace-with-full-repository_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/codespace-with-full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace-with-full-repository_state.dart';
import 'package:github/model/codespace-with-full-repository_git_status.dart';
import 'package:github/model/codespace-with-full-repository_location.dart';
import 'package:github/model/codespace-with-full-repository_runtime_constraints.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/codespace.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace_state.dart';
import 'package:github/model/codespace_git_status.dart';
import 'package:github/model/codespace_location.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
class CodespacesApi {
    CodespacesApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Codespaces/listInOrganization200Response> codespaces/listInOrganization(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/codespaces'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/listInOrganization200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/listInOrganization');
    }
    Future<void> codespaces/setCodespacesAccess(
        String org,
        Codespaces/setCodespacesAccessRequest codespaces/setCodespacesAccessRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/codespaces/access'
            .replaceAll('{org}', "${ org }")
            ,
            body: codespaces/setCodespacesAccessRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/setCodespacesAccess');
    }
    Future<void> codespaces/setCodespacesAccessUsers(
        String org,
        Codespaces/setCodespacesAccessUsersRequest codespaces/setCodespacesAccessUsersRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/codespaces/access/selected_users'
            .replaceAll('{org}', "${ org }")
            ,
            body: codespaces/setCodespacesAccessUsersRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/setCodespacesAccessUsers');
    }
    Future<void> codespaces/deleteCodespacesAccessUsers(
        String org,
        Codespaces/deleteCodespacesAccessUsersRequest codespaces/deleteCodespacesAccessUsersRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/codespaces/access/selected_users'
            .replaceAll('{org}', "${ org }")
            ,
            body: codespaces/deleteCodespacesAccessUsersRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/deleteCodespacesAccessUsers');
    }
    Future<Codespaces/listOrgSecrets200Response> codespaces/listOrgSecrets(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/codespaces/secrets'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/listOrgSecrets200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/listOrgSecrets');
    }
    Future<Codespaces-public-key> codespaces/getOrgPublicKey(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/codespaces/secrets/public-key'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces-public-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/getOrgPublicKey');
    }
    Future<Codespaces-org-secret> codespaces/getOrgSecret(
        String org,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/codespaces/secrets/{secret_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces-org-secret.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/getOrgSecret');
    }
    Future<Codespaces/createOrUpdateOrgSecretResponse> codespaces/createOrUpdateOrgSecret(
        String org,
        String secretName,
        Codespaces/createOrUpdateOrgSecretRequest codespaces/createOrUpdateOrgSecretRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/codespaces/secrets/{secret_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: codespaces/createOrUpdateOrgSecretRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/createOrUpdateOrgSecretResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/createOrUpdateOrgSecret');
    }
    Future<void> codespaces/deleteOrgSecret(
        String org,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/codespaces/secrets/{secret_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/deleteOrgSecret');
    }
    Future<Codespaces/listSelectedReposForOrgSecret200Response> codespaces/listSelectedReposForOrgSecret(
        String org,
        String secretName,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/codespaces/secrets/{secret_name}/repositories'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/listSelectedReposForOrgSecret200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/listSelectedReposForOrgSecret');
    }
    Future<void> codespaces/setSelectedReposForOrgSecret(
        String org,
        String secretName,
        Codespaces/setSelectedReposForOrgSecretRequest codespaces/setSelectedReposForOrgSecretRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/codespaces/secrets/{secret_name}/repositories'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: codespaces/setSelectedReposForOrgSecretRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/setSelectedReposForOrgSecret');
    }
    Future<void> codespaces/addSelectedRepoToOrgSecret(
        String org,
        String secretName,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/codespaces/secrets/{secret_name}/repositories/{repository_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
                        .replaceAll('{repository_id}', "${ repositoryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/addSelectedRepoToOrgSecret');
    }
    Future<void> codespaces/removeSelectedRepoFromOrgSecret(
        String org,
        String secretName,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/codespaces/secrets/{secret_name}/repositories/{repository_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
                        .replaceAll('{repository_id}', "${ repositoryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/removeSelectedRepoFromOrgSecret');
    }
    Future<Codespaces/getCodespacesForUserInOrg200Response> codespaces/getCodespacesForUserInOrg(
        String org,
        String username,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/members/{username}/codespaces'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/getCodespacesForUserInOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/getCodespacesForUserInOrg');
    }
    Future<dynamic> codespaces/deleteFromOrganization(
        String org,
        String username,
        String codespaceName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/members/{username}/codespaces/{codespace_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
                        .replaceAll('{codespace_name}', "${ codespaceName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/deleteFromOrganization');
    }
    Future<Codespace> codespaces/stopInOrganization(
        String org,
        String username,
        String codespaceName,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/members/{username}/codespaces/{codespace_name}/stop'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
                        .replaceAll('{codespace_name}', "${ codespaceName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespace.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/stopInOrganization');
    }
    Future<Codespaces/listInRepositoryForAuthenticatedUser200Response> codespaces/listInRepositoryForAuthenticatedUser(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/codespaces'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/listInRepositoryForAuthenticatedUser200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/listInRepositoryForAuthenticatedUser');
    }
    Future<Codespace> codespaces/createWithRepoForAuthenticatedUser(
        String owner,
        String repo,
        Codespaces/createWithRepoForAuthenticatedUserRequest codespaces/createWithRepoForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/codespaces'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: codespaces/createWithRepoForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespace.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/createWithRepoForAuthenticatedUser');
    }
    Future<Codespaces/listDevcontainersInRepositoryForAuthenticatedUser200Response> codespaces/listDevcontainersInRepositoryForAuthenticatedUser(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/codespaces/devcontainers'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/listDevcontainersInRepositoryForAuthenticatedUser200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/listDevcontainersInRepositoryForAuthenticatedUser');
    }
    Future<Codespaces/repoMachinesForAuthenticatedUser200Response> codespaces/repoMachinesForAuthenticatedUser(
        String owner,
        String repo,
        { String? location,String? clientIp,String? ref, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/codespaces/machines'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'location': ?location.toString(),
                'client_ip': ?clientIp.toString(),
                'ref': ?ref.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/repoMachinesForAuthenticatedUser200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/repoMachinesForAuthenticatedUser');
    }
    Future<Codespaces/preFlightWithRepoForAuthenticatedUser200Response> codespaces/preFlightWithRepoForAuthenticatedUser(
        String owner,
        String repo,
        { String? ref,String? clientIp, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/codespaces/new'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'ref': ?ref.toString(),
                'client_ip': ?clientIp.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/preFlightWithRepoForAuthenticatedUser200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/preFlightWithRepoForAuthenticatedUser');
    }
    Future<Codespaces-permissions-check-for-devcontainer> codespaces/checkPermissionsForDevcontainer(
        String owner,
        String repo,
        String ref,
        String devcontainerPath,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/codespaces/permissions_check'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'ref': ref.toString(),
                'devcontainer_path': devcontainerPath.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces-permissions-check-for-devcontainer.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/checkPermissionsForDevcontainer');
    }
    Future<Codespaces/listRepoSecrets200Response> codespaces/listRepoSecrets(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/codespaces/secrets'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/listRepoSecrets200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/listRepoSecrets');
    }
    Future<Codespaces-public-key> codespaces/getRepoPublicKey(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/codespaces/secrets/public-key'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces-public-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/getRepoPublicKey');
    }
    Future<Repo-codespaces-secret> codespaces/getRepoSecret(
        String owner,
        String repo,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/codespaces/secrets/{secret_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repo-codespaces-secret.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/getRepoSecret');
    }
    Future<Codespaces/createOrUpdateRepoSecretResponse> codespaces/createOrUpdateRepoSecret(
        String owner,
        String repo,
        String secretName,
        Codespaces/createOrUpdateRepoSecretRequest codespaces/createOrUpdateRepoSecretRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/codespaces/secrets/{secret_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: codespaces/createOrUpdateRepoSecretRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/createOrUpdateRepoSecretResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/createOrUpdateRepoSecret');
    }
    Future<void> codespaces/deleteRepoSecret(
        String owner,
        String repo,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/codespaces/secrets/{secret_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/deleteRepoSecret');
    }
    Future<Codespace> codespaces/createWithPrForAuthenticatedUser(
        String owner,
        String repo,
        int pullNumber,
        Codespaces/createWithPrForAuthenticatedUserRequest codespaces/createWithPrForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/codespaces'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
            body: codespaces/createWithPrForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespace.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/createWithPrForAuthenticatedUser');
    }
    Future<Codespaces/listForAuthenticatedUser200Response> codespaces/listForAuthenticatedUser(
        { int? perPage = 30,int? page = 1,int? repositoryId, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/codespaces'
,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'repository_id': ?repositoryId.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/listForAuthenticatedUser200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/listForAuthenticatedUser');
    }
    Future<Codespace> codespaces/createForAuthenticatedUser(
        Codespaces/createForAuthenticatedUserRequest codespaces/createForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/codespaces'
,
            body: codespaces/createForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespace.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/createForAuthenticatedUser');
    }
    Future<Codespaces/listSecretsForAuthenticatedUser200Response> codespaces/listSecretsForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/codespaces/secrets'
,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/listSecretsForAuthenticatedUser200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/listSecretsForAuthenticatedUser');
    }
    Future<Codespaces-user-public-key> codespaces/getPublicKeyForAuthenticatedUser(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/codespaces/secrets/public-key'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces-user-public-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/getPublicKeyForAuthenticatedUser');
    }
    Future<Codespaces-secret> codespaces/getSecretForAuthenticatedUser(
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/codespaces/secrets/{secret_name}'
            .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces-secret.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/getSecretForAuthenticatedUser');
    }
    Future<Codespaces/createOrUpdateSecretForAuthenticatedUserResponse> codespaces/createOrUpdateSecretForAuthenticatedUser(
        String secretName,
        Codespaces/createOrUpdateSecretForAuthenticatedUserRequest codespaces/createOrUpdateSecretForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/user/codespaces/secrets/{secret_name}'
            .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: codespaces/createOrUpdateSecretForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/createOrUpdateSecretForAuthenticatedUserResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/createOrUpdateSecretForAuthenticatedUser');
    }
    Future<void> codespaces/deleteSecretForAuthenticatedUser(
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/codespaces/secrets/{secret_name}'
            .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/deleteSecretForAuthenticatedUser');
    }
    Future<Codespaces/listRepositoriesForSecretForAuthenticatedUser200Response> codespaces/listRepositoriesForSecretForAuthenticatedUser(
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/codespaces/secrets/{secret_name}/repositories'
            .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/listRepositoriesForSecretForAuthenticatedUser200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/listRepositoriesForSecretForAuthenticatedUser');
    }
    Future<void> codespaces/setRepositoriesForSecretForAuthenticatedUser(
        String secretName,
        Codespaces/setRepositoriesForSecretForAuthenticatedUserRequest codespaces/setRepositoriesForSecretForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/user/codespaces/secrets/{secret_name}/repositories'
            .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: codespaces/setRepositoriesForSecretForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/setRepositoriesForSecretForAuthenticatedUser');
    }
    Future<void> codespaces/addRepositoryForSecretForAuthenticatedUser(
        String secretName,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/user/codespaces/secrets/{secret_name}/repositories/{repository_id}'
            .replaceAll('{secret_name}', "${ secretName }")
                        .replaceAll('{repository_id}', "${ repositoryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/addRepositoryForSecretForAuthenticatedUser');
    }
    Future<void> codespaces/removeRepositoryForSecretForAuthenticatedUser(
        String secretName,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/codespaces/secrets/{secret_name}/repositories/{repository_id}'
            .replaceAll('{secret_name}', "${ secretName }")
                        .replaceAll('{repository_id}', "${ repositoryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/removeRepositoryForSecretForAuthenticatedUser');
    }
    Future<Codespace> codespaces/getForAuthenticatedUser(
        String codespaceName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/codespaces/{codespace_name}'
            .replaceAll('{codespace_name}', "${ codespaceName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespace.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/getForAuthenticatedUser');
    }
    Future<dynamic> codespaces/deleteForAuthenticatedUser(
        String codespaceName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/codespaces/{codespace_name}'
            .replaceAll('{codespace_name}', "${ codespaceName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/deleteForAuthenticatedUser');
    }
    Future<Codespace> codespaces/updateForAuthenticatedUser(
        String codespaceName,
        { Codespaces/updateForAuthenticatedUserRequest? codespaces/updateForAuthenticatedUserRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/user/codespaces/{codespace_name}'
            .replaceAll('{codespace_name}', "${ codespaceName }")
            ,
            body: codespaces/updateForAuthenticatedUserRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespace.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/updateForAuthenticatedUser');
    }
    Future<Codespace-export-details> codespaces/exportForAuthenticatedUser(
        String codespaceName,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/codespaces/{codespace_name}/exports'
            .replaceAll('{codespace_name}', "${ codespaceName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespace-export-details.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/exportForAuthenticatedUser');
    }
    Future<Codespace-export-details> codespaces/getExportDetailsForAuthenticatedUser(
        String codespaceName,
        String exportId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/codespaces/{codespace_name}/exports/{export_id}'
            .replaceAll('{codespace_name}', "${ codespaceName }")
                        .replaceAll('{export_id}', "${ exportId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespace-export-details.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/getExportDetailsForAuthenticatedUser');
    }
    Future<Codespaces/codespaceMachinesForAuthenticatedUser200Response> codespaces/codespaceMachinesForAuthenticatedUser(
        String codespaceName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/codespaces/{codespace_name}/machines'
            .replaceAll('{codespace_name}', "${ codespaceName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespaces/codespaceMachinesForAuthenticatedUser200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/codespaceMachinesForAuthenticatedUser');
    }
    Future<Codespace-with-full-repository> codespaces/publishForAuthenticatedUser(
        String codespaceName,
        Codespaces/publishForAuthenticatedUserRequest codespaces/publishForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/codespaces/{codespace_name}/publish'
            .replaceAll('{codespace_name}', "${ codespaceName }")
            ,
            body: codespaces/publishForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespace-with-full-repository.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/publishForAuthenticatedUser');
    }
    Future<Codespace> codespaces/startForAuthenticatedUser(
        String codespaceName,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/codespaces/{codespace_name}/start'
            .replaceAll('{codespace_name}', "${ codespaceName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespace.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/startForAuthenticatedUser');
    }
    Future<Codespace> codespaces/stopForAuthenticatedUser(
        String codespaceName,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/codespaces/{codespace_name}/stop'
            .replaceAll('{codespace_name}', "${ codespaceName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codespace.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codespaces/stopForAuthenticatedUser');
    }
}
