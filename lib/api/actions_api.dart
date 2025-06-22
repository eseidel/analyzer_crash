import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/actions-cache-usage-org-enterprise.dart';
import 'package:github/model/actions-cache-usage-org-enterprise.dart';
import 'package:github/model/actions/get_actions_cache_usage_by_repo_for_org200_response.dart';
import 'package:github/model/actions-cache-usage-by-repository.dart';
import 'package:github/model/actions/get_actions_cache_usage_by_repo_for_org200_response.dart';
import 'package:github/model/actions-cache-usage-by-repository.dart';
import 'package:github/model/actions/list_hosted_runners_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions/list_hosted_runners_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions/create_hosted_runner_for_org_request.dart';
import 'package:github/model/actions/create_hosted_runner_for_org_request_image.dart';
import 'package:github/model/actions/create_hosted_runner_for_org_request_image_source.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions/get_hosted_runners_github_owned_images_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner-image.dart';
import 'package:github/model/actions-hosted-runner-image_source.dart';
import 'package:github/model/actions/get_hosted_runners_github_owned_images_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner-image.dart';
import 'package:github/model/actions-hosted-runner-image_source.dart';
import 'package:github/model/actions/get_hosted_runners_partner_images_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner-image.dart';
import 'package:github/model/actions-hosted-runner-image_source.dart';
import 'package:github/model/actions/get_hosted_runners_partner_images_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner-image.dart';
import 'package:github/model/actions-hosted-runner-image_source.dart';
import 'package:github/model/actions-hosted-runner-limits.dart';
import 'package:github/model/actions-hosted-runner-limits_public_ips.dart';
import 'package:github/model/actions-hosted-runner-limits.dart';
import 'package:github/model/actions-hosted-runner-limits_public_ips.dart';
import 'package:github/model/actions/get_hosted_runners_machine_specs_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions/get_hosted_runners_machine_specs_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions/get_hosted_runners_platforms_for_org200_response.dart';
import 'package:github/model/actions/get_hosted_runners_platforms_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions/update_hosted_runner_for_org_request.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions-organization-permissions.dart';
import 'package:github/model/enabled-repositories.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/selected-actions-url.dart';
import 'package:github/model/actions-organization-permissions.dart';
import 'package:github/model/enabled-repositories.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/selected-actions-url.dart';
import 'package:github/model/actions/set_github_actions_permissions_organization_request.dart';
import 'package:github/model/enabled-repositories.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/actions/list_selected_repositories_enabled_github_actions_organization200_response.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/actions/list_selected_repositories_enabled_github_actions_organization200_response.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/actions/set_selected_repositories_enabled_github_actions_organization_request.dart';
import 'package:github/model/selected-actions.dart';
import 'package:github/model/selected-actions.dart';
import 'package:github/model/selected-actions.dart';
import 'package:github/model/actions-get-default-workflow-permissions.dart';
import 'package:github/model/actions-default-workflow-permissions.dart';
import 'package:github/model/actions-get-default-workflow-permissions.dart';
import 'package:github/model/actions-default-workflow-permissions.dart';
import 'package:github/model/actions-set-default-workflow-permissions.dart';
import 'package:github/model/actions-default-workflow-permissions.dart';
import 'package:github/model/actions/list_self_hosted_runner_groups_for_org200_response.dart';
import 'package:github/model/runner-groups-org.dart';
import 'package:github/model/actions/list_self_hosted_runner_groups_for_org200_response.dart';
import 'package:github/model/runner-groups-org.dart';
import 'package:github/model/actions/create_self_hosted_runner_group_for_org_request.dart';
import 'package:github/model/actions/create_self_hosted_runner_group_for_org_request_visibility.dart';
import 'package:github/model/runner-groups-org.dart';
import 'package:github/model/runner-groups-org.dart';
import 'package:github/model/runner-groups-org.dart';
import 'package:github/model/runner-groups-org.dart';
import 'package:github/model/actions/update_self_hosted_runner_group_for_org_request.dart';
import 'package:github/model/actions/update_self_hosted_runner_group_for_org_request_visibility.dart';
import 'package:github/model/runner-groups-org.dart';
import 'package:github/model/runner-groups-org.dart';
import 'package:github/model/actions/list_github_hosted_runners_in_group_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions/list_github_hosted_runners_in_group_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions/list_repo_access_to_self_hosted_runner_group_in_org200_response.dart';
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
import 'package:github/model/actions/list_repo_access_to_self_hosted_runner_group_in_org200_response.dart';
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
import 'package:github/model/actions/set_repo_access_to_self_hosted_runner_group_in_org_request.dart';
import 'package:github/model/actions/list_self_hosted_runners_in_group_for_org200_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions/list_self_hosted_runners_in_group_for_org200_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions/set_self_hosted_runners_in_group_for_org_request.dart';
import 'package:github/model/actions/list_self_hosted_runners_for_org200_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions/list_self_hosted_runners_for_org200_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/runner-application.dart';
import 'package:github/model/runner-application.dart';
import 'package:github/model/actions/generate_runner_jitconfig_for_org_request.dart';
import 'package:github/model/actions_runner_jitconfig_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/actions_runner_jitconfig_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/authentication-token.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/authentication-token_repository_selection.dart';
import 'package:github/model/authentication-token.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/authentication-token_repository_selection.dart';
import 'package:github/model/authentication-token.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/authentication-token_repository_selection.dart';
import 'package:github/model/authentication-token.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/authentication-token_repository_selection.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions/add_custom_labels_to_self_hosted_runner_for_org_request.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions/set_custom_labels_for_self_hosted_runner_for_org_request.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions_runner_labels_readonly_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/actions_runner_labels_readonly_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions/list_org_secrets200_response.dart';
import 'package:github/model/organization-actions-secret.dart';
import 'package:github/model/organization-actions-secret_visibility.dart';
import 'package:github/model/actions/list_org_secrets200_response.dart';
import 'package:github/model/organization-actions-secret.dart';
import 'package:github/model/organization-actions-secret_visibility.dart';
import 'package:github/model/actions-public-key.dart';
import 'package:github/model/actions-public-key.dart';
import 'package:github/model/organization-actions-secret.dart';
import 'package:github/model/organization-actions-secret_visibility.dart';
import 'package:github/model/organization-actions-secret.dart';
import 'package:github/model/organization-actions-secret_visibility.dart';
import 'package:github/model/actions/create_or_update_org_secret_request.dart';
import 'package:github/model/actions/create_or_update_org_secret_request_visibility.dart';
import 'package:github/model/actions/create_or_update_org_secret_response.dart';
import 'package:github/model/actions/list_selected_repos_for_org_secret200_response.dart';
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
import 'package:github/model/actions/list_selected_repos_for_org_secret200_response.dart';
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
import 'package:github/model/actions/set_selected_repos_for_org_secret_request.dart';
import 'package:github/model/actions/list_org_variables200_response.dart';
import 'package:github/model/organization-actions-variable.dart';
import 'package:github/model/organization-actions-variable_visibility.dart';
import 'package:github/model/actions/list_org_variables200_response.dart';
import 'package:github/model/organization-actions-variable.dart';
import 'package:github/model/organization-actions-variable_visibility.dart';
import 'package:github/model/actions/create_org_variable_request.dart';
import 'package:github/model/actions/create_org_variable_request_visibility.dart';
import 'package:github/model/organization-actions-variable.dart';
import 'package:github/model/organization-actions-variable_visibility.dart';
import 'package:github/model/organization-actions-variable.dart';
import 'package:github/model/organization-actions-variable_visibility.dart';
import 'package:github/model/actions/update_org_variable_request.dart';
import 'package:github/model/actions/update_org_variable_request_visibility.dart';
import 'package:github/model/actions/list_selected_repos_for_org_variable200_response.dart';
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
import 'package:github/model/actions/list_selected_repos_for_org_variable200_response.dart';
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
import 'package:github/model/actions/set_selected_repos_for_org_variable_request.dart';
import 'package:github/model/actions/list_artifacts_for_repo200_response.dart';
import 'package:github/model/artifact.dart';
import 'package:github/model/artifact_workflow_run.dart';
import 'package:github/model/actions/list_artifacts_for_repo200_response.dart';
import 'package:github/model/artifact.dart';
import 'package:github/model/artifact_workflow_run.dart';
import 'package:github/model/artifact.dart';
import 'package:github/model/artifact_workflow_run.dart';
import 'package:github/model/artifact.dart';
import 'package:github/model/artifact_workflow_run.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/actions-cache-usage-by-repository.dart';
import 'package:github/model/actions-cache-usage-by-repository.dart';
import 'package:github/model/actions-cache-list.dart';
import 'package:github/model/actions-cache-list_actions_caches_inner.dart';
import 'package:github/model/actions-cache-list-sort.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/actions-cache-list.dart';
import 'package:github/model/actions-cache-list_actions_caches_inner.dart';
import 'package:github/model/actions-cache-list.dart';
import 'package:github/model/actions-cache-list_actions_caches_inner.dart';
import 'package:github/model/actions-cache-list.dart';
import 'package:github/model/actions-cache-list_actions_caches_inner.dart';
import 'package:github/model/job.dart';
import 'package:github/model/job_status.dart';
import 'package:github/model/job_conclusion.dart';
import 'package:github/model/job_steps_inner.dart';
import 'package:github/model/job_steps_inner_status.dart';
import 'package:github/model/job.dart';
import 'package:github/model/job_status.dart';
import 'package:github/model/job_conclusion.dart';
import 'package:github/model/job_steps_inner.dart';
import 'package:github/model/job_steps_inner_status.dart';
import 'package:github/model/actions/re_run_job_for_workflow_run_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/oidc-custom-sub-repo.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/oidc-custom-sub-repo.dart';
import 'package:github/model/actions/set_custom_oidc_sub_claim_for_repo_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/actions/list_repo_organization_secrets200_response.dart';
import 'package:github/model/actions-secret.dart';
import 'package:github/model/actions/list_repo_organization_secrets200_response.dart';
import 'package:github/model/actions-secret.dart';
import 'package:github/model/actions/list_repo_organization_variables200_response.dart';
import 'package:github/model/actions-variable.dart';
import 'package:github/model/actions/list_repo_organization_variables200_response.dart';
import 'package:github/model/actions-variable.dart';
import 'package:github/model/actions-repository-permissions.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/selected-actions-url.dart';
import 'package:github/model/actions-repository-permissions.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/selected-actions-url.dart';
import 'package:github/model/actions/set_github_actions_permissions_repository_request.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/actions-workflow-access-to-repository.dart';
import 'package:github/model/actions-workflow-access-to-repository_access_level.dart';
import 'package:github/model/actions-workflow-access-to-repository.dart';
import 'package:github/model/actions-workflow-access-to-repository_access_level.dart';
import 'package:github/model/actions-workflow-access-to-repository.dart';
import 'package:github/model/actions-workflow-access-to-repository_access_level.dart';
import 'package:github/model/selected-actions.dart';
import 'package:github/model/selected-actions.dart';
import 'package:github/model/selected-actions.dart';
import 'package:github/model/actions-get-default-workflow-permissions.dart';
import 'package:github/model/actions-default-workflow-permissions.dart';
import 'package:github/model/actions-get-default-workflow-permissions.dart';
import 'package:github/model/actions-default-workflow-permissions.dart';
import 'package:github/model/actions-set-default-workflow-permissions.dart';
import 'package:github/model/actions-default-workflow-permissions.dart';
import 'package:github/model/actions/list_self_hosted_runners_for_repo200_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions/list_self_hosted_runners_for_repo200_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/runner-application.dart';
import 'package:github/model/runner-application.dart';
import 'package:github/model/actions/generate_runner_jitconfig_for_repo_request.dart';
import 'package:github/model/actions_runner_jitconfig_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/actions_runner_jitconfig_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/authentication-token.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/authentication-token_repository_selection.dart';
import 'package:github/model/authentication-token.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/authentication-token_repository_selection.dart';
import 'package:github/model/authentication-token.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/authentication-token_repository_selection.dart';
import 'package:github/model/authentication-token.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/authentication-token_repository_selection.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions/add_custom_labels_to_self_hosted_runner_for_repo_request.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions/set_custom_labels_for_self_hosted_runner_for_repo_request.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions_runner_labels_readonly_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/actions_runner_labels_readonly_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/actions_runner_labels_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions/list_workflow_runs_for_repo200_response.dart';
import 'package:github/model/workflow-run.dart';
import 'package:github/model/referenced-workflow.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-commit.dart';
import 'package:github/model/nullable-simple-commit_author.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
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
import 'package:github/model/workflow-run-status.dart';
import 'package:github/model/actions/list_workflow_runs_for_repo200_response.dart';
import 'package:github/model/workflow-run.dart';
import 'package:github/model/referenced-workflow.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-commit.dart';
import 'package:github/model/nullable-simple-commit_author.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
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
import 'package:github/model/workflow-run.dart';
import 'package:github/model/referenced-workflow.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-commit.dart';
import 'package:github/model/nullable-simple-commit_author.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
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
import 'package:github/model/workflow-run.dart';
import 'package:github/model/referenced-workflow.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-commit.dart';
import 'package:github/model/nullable-simple-commit_author.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
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
import 'package:github/model/environment-approvals.dart';
import 'package:github/model/environment-approvals_environments_inner.dart';
import 'package:github/model/environment-approvals_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/environment-approvals.dart';
import 'package:github/model/environment-approvals_environments_inner.dart';
import 'package:github/model/environment-approvals_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/actions/list_workflow_run_artifacts200_response.dart';
import 'package:github/model/artifact.dart';
import 'package:github/model/artifact_workflow_run.dart';
import 'package:github/model/actions/list_workflow_run_artifacts200_response.dart';
import 'package:github/model/artifact.dart';
import 'package:github/model/artifact_workflow_run.dart';
import 'package:github/model/workflow-run.dart';
import 'package:github/model/referenced-workflow.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-commit.dart';
import 'package:github/model/nullable-simple-commit_author.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
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
import 'package:github/model/workflow-run.dart';
import 'package:github/model/referenced-workflow.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-commit.dart';
import 'package:github/model/nullable-simple-commit_author.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
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
import 'package:github/model/actions/list_jobs_for_workflow_run_attempt200_response.dart';
import 'package:github/model/job.dart';
import 'package:github/model/job_status.dart';
import 'package:github/model/job_conclusion.dart';
import 'package:github/model/job_steps_inner.dart';
import 'package:github/model/job_steps_inner_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/actions/list_jobs_for_workflow_run_attempt200_response.dart';
import 'package:github/model/job.dart';
import 'package:github/model/job_status.dart';
import 'package:github/model/job_conclusion.dart';
import 'package:github/model/job_steps_inner.dart';
import 'package:github/model/job_steps_inner_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/actions/review_custom_gates_for_run_request.dart';
import 'package:github/model/review-custom-gates-comment-required.dart';
import 'package:github/model/review-custom-gates-state-required.dart';
import 'package:github/model/review-custom-gates-state-required_state.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/actions/list_jobs_for_workflow_run200_response.dart';
import 'package:github/model/job.dart';
import 'package:github/model/job_status.dart';
import 'package:github/model/job_conclusion.dart';
import 'package:github/model/job_steps_inner.dart';
import 'package:github/model/job_steps_inner_status.dart';
import 'package:github/model/actions/list_jobs_for_workflow_run_parameter3.dart';
import 'package:github/model/actions/list_jobs_for_workflow_run200_response.dart';
import 'package:github/model/job.dart';
import 'package:github/model/job_status.dart';
import 'package:github/model/job_conclusion.dart';
import 'package:github/model/job_steps_inner.dart';
import 'package:github/model/job_steps_inner_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pending-deployment.dart';
import 'package:github/model/pending-deployment_environment.dart';
import 'package:github/model/pending-deployment_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/pending-deployment_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pending-deployment.dart';
import 'package:github/model/pending-deployment_environment.dart';
import 'package:github/model/pending-deployment_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/pending-deployment_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/actions/review_pending_deployments_for_run_request.dart';
import 'package:github/model/actions/review_pending_deployments_for_run_request_state.dart';
import 'package:github/model/deployment.dart';
import 'package:github/model/deployment_payload.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/deployment.dart';
import 'package:github/model/deployment_payload.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/actions/re_run_workflow_request.dart';
import 'package:github/model/actions/re_run_workflow_failed_jobs_request.dart';
import 'package:github/model/workflow-run-usage.dart';
import 'package:github/model/workflow-run-usage_billable.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage.dart';
import 'package:github/model/workflow-run-usage_billable.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s_job_runs_inner.dart';
import 'package:github/model/actions/list_repo_secrets200_response.dart';
import 'package:github/model/actions-secret.dart';
import 'package:github/model/actions/list_repo_secrets200_response.dart';
import 'package:github/model/actions-secret.dart';
import 'package:github/model/actions-public-key.dart';
import 'package:github/model/actions-public-key.dart';
import 'package:github/model/actions-secret.dart';
import 'package:github/model/actions-secret.dart';
import 'package:github/model/actions/create_or_update_repo_secret_request.dart';
import 'package:github/model/actions/create_or_update_repo_secret_response.dart';
import 'package:github/model/actions/list_repo_variables200_response.dart';
import 'package:github/model/actions-variable.dart';
import 'package:github/model/actions/list_repo_variables200_response.dart';
import 'package:github/model/actions-variable.dart';
import 'package:github/model/actions/create_repo_variable_request.dart';
import 'package:github/model/actions-variable.dart';
import 'package:github/model/actions-variable.dart';
import 'package:github/model/actions/update_repo_variable_request.dart';
import 'package:github/model/actions/list_repo_workflows200_response.dart';
import 'package:github/model/workflow.dart';
import 'package:github/model/workflow_state.dart';
import 'package:github/model/actions/list_repo_workflows200_response.dart';
import 'package:github/model/workflow.dart';
import 'package:github/model/workflow_state.dart';
import 'package:github/model/workflow.dart';
import 'package:github/model/workflow_state.dart';
import 'package:github/model/workflow-id.dart';
import 'package:github/model/workflow.dart';
import 'package:github/model/workflow_state.dart';
import 'package:github/model/workflow-id.dart';
import 'package:github/model/actions/create_workflow_dispatch_request.dart';
import 'package:github/model/workflow-id.dart';
import 'package:github/model/workflow-id.dart';
import 'package:github/model/actions/list_workflow_runs200_response.dart';
import 'package:github/model/workflow-run.dart';
import 'package:github/model/referenced-workflow.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-commit.dart';
import 'package:github/model/nullable-simple-commit_author.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
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
import 'package:github/model/workflow-id.dart';
import 'package:github/model/workflow-run-status.dart';
import 'package:github/model/actions/list_workflow_runs200_response.dart';
import 'package:github/model/workflow-run.dart';
import 'package:github/model/referenced-workflow.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-commit.dart';
import 'package:github/model/nullable-simple-commit_author.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
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
import 'package:github/model/workflow-usage.dart';
import 'package:github/model/workflow-usage_billable.dart';
import 'package:github/model/workflow-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-usage_billable_w_i_n_d_o_w_s.dart';
import 'package:github/model/workflow-id.dart';
import 'package:github/model/workflow-usage.dart';
import 'package:github/model/workflow-usage_billable.dart';
import 'package:github/model/workflow-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-usage_billable_w_i_n_d_o_w_s.dart';
import 'package:github/model/actions/list_environment_secrets200_response.dart';
import 'package:github/model/actions-secret.dart';
import 'package:github/model/actions/list_environment_secrets200_response.dart';
import 'package:github/model/actions-secret.dart';
import 'package:github/model/actions-public-key.dart';
import 'package:github/model/actions-public-key.dart';
import 'package:github/model/actions-secret.dart';
import 'package:github/model/actions-secret.dart';
import 'package:github/model/actions/create_or_update_environment_secret_request.dart';
import 'package:github/model/actions/create_or_update_environment_secret_response.dart';
import 'package:github/model/actions/list_environment_variables200_response.dart';
import 'package:github/model/actions-variable.dart';
import 'package:github/model/actions/list_environment_variables200_response.dart';
import 'package:github/model/actions-variable.dart';
import 'package:github/model/actions/create_environment_variable_request.dart';
import 'package:github/model/actions-variable.dart';
import 'package:github/model/actions-variable.dart';
import 'package:github/model/actions/update_environment_variable_request.dart';
class ActionsApi {
    ActionsApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Actions-cache-usage-org-enterprise> actions/getActionsCacheUsageForOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/cache/usage'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-cache-usage-org-enterprise.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getActionsCacheUsageForOrg');
    }
    Future<Actions/getActionsCacheUsageByRepoForOrg200Response> actions/getActionsCacheUsageByRepoForOrg(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/cache/usage-by-repository'
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
            return Actions/getActionsCacheUsageByRepoForOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getActionsCacheUsageByRepoForOrg');
    }
    Future<Actions/listHostedRunnersForOrg200Response> actions/listHostedRunnersForOrg(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/hosted-runners'
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
            return Actions/listHostedRunnersForOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listHostedRunnersForOrg');
    }
    Future<Actions-hosted-runner> actions/createHostedRunnerForOrg(
        String org,
        Actions/createHostedRunnerForOrgRequest actions/createHostedRunnerForOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/actions/hosted-runners'
            .replaceAll('{org}', "${ org }")
            ,
            body: actions/createHostedRunnerForOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-hosted-runner.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createHostedRunnerForOrg');
    }
    Future<Actions/getHostedRunnersGithubOwnedImagesForOrg200Response> actions/getHostedRunnersGithubOwnedImagesForOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/hosted-runners/images/github-owned'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/getHostedRunnersGithubOwnedImagesForOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getHostedRunnersGithubOwnedImagesForOrg');
    }
    Future<Actions/getHostedRunnersPartnerImagesForOrg200Response> actions/getHostedRunnersPartnerImagesForOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/hosted-runners/images/partner'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/getHostedRunnersPartnerImagesForOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getHostedRunnersPartnerImagesForOrg');
    }
    Future<Actions-hosted-runner-limits> actions/getHostedRunnersLimitsForOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/hosted-runners/limits'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-hosted-runner-limits.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getHostedRunnersLimitsForOrg');
    }
    Future<Actions/getHostedRunnersMachineSpecsForOrg200Response> actions/getHostedRunnersMachineSpecsForOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/hosted-runners/machine-sizes'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/getHostedRunnersMachineSpecsForOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getHostedRunnersMachineSpecsForOrg');
    }
    Future<Actions/getHostedRunnersPlatformsForOrg200Response> actions/getHostedRunnersPlatformsForOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/hosted-runners/platforms'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/getHostedRunnersPlatformsForOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getHostedRunnersPlatformsForOrg');
    }
    Future<Actions-hosted-runner> actions/getHostedRunnerForOrg(
        String org,
        int hostedRunnerId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/hosted-runners/{hosted_runner_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{hosted_runner_id}', "${ hostedRunnerId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-hosted-runner.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getHostedRunnerForOrg');
    }
    Future<Actions-hosted-runner> actions/deleteHostedRunnerForOrg(
        String org,
        int hostedRunnerId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/actions/hosted-runners/{hosted_runner_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{hosted_runner_id}', "${ hostedRunnerId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-hosted-runner.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteHostedRunnerForOrg');
    }
    Future<Actions-hosted-runner> actions/updateHostedRunnerForOrg(
        String org,
        int hostedRunnerId,
        Actions/updateHostedRunnerForOrgRequest actions/updateHostedRunnerForOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/actions/hosted-runners/{hosted_runner_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{hosted_runner_id}', "${ hostedRunnerId }")
            ,
            body: actions/updateHostedRunnerForOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-hosted-runner.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/updateHostedRunnerForOrg');
    }
    Future<Actions-organization-permissions> actions/getGithubActionsPermissionsOrganization(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/permissions'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-organization-permissions.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getGithubActionsPermissionsOrganization');
    }
    Future<void> actions/setGithubActionsPermissionsOrganization(
        String org,
        Actions/setGithubActionsPermissionsOrganizationRequest actions/setGithubActionsPermissionsOrganizationRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/permissions'
            .replaceAll('{org}', "${ org }")
            ,
            body: actions/setGithubActionsPermissionsOrganizationRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setGithubActionsPermissionsOrganization');
    }
    Future<Actions/listSelectedRepositoriesEnabledGithubActionsOrganization200Response> actions/listSelectedRepositoriesEnabledGithubActionsOrganization(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/permissions/repositories'
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
            return Actions/listSelectedRepositoriesEnabledGithubActionsOrganization200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listSelectedRepositoriesEnabledGithubActionsOrganization');
    }
    Future<void> actions/setSelectedRepositoriesEnabledGithubActionsOrganization(
        String org,
        Actions/setSelectedRepositoriesEnabledGithubActionsOrganizationRequest actions/setSelectedRepositoriesEnabledGithubActionsOrganizationRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/permissions/repositories'
            .replaceAll('{org}', "${ org }")
            ,
            body: actions/setSelectedRepositoriesEnabledGithubActionsOrganizationRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setSelectedRepositoriesEnabledGithubActionsOrganization');
    }
    Future<void> actions/enableSelectedRepositoryGithubActionsOrganization(
        String org,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/permissions/repositories/{repository_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{repository_id}', "${ repositoryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/enableSelectedRepositoryGithubActionsOrganization');
    }
    Future<void> actions/disableSelectedRepositoryGithubActionsOrganization(
        String org,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/actions/permissions/repositories/{repository_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{repository_id}', "${ repositoryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/disableSelectedRepositoryGithubActionsOrganization');
    }
    Future<Selected-actions> actions/getAllowedActionsOrganization(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/permissions/selected-actions'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Selected-actions.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getAllowedActionsOrganization');
    }
    Future<void> actions/setAllowedActionsOrganization(
        String org,
        { Selected-actions? selected-actions, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/permissions/selected-actions'
            .replaceAll('{org}', "${ org }")
            ,
            body: selected-actions?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setAllowedActionsOrganization');
    }
    Future<Actions-get-default-workflow-permissions> actions/getGithubActionsDefaultWorkflowPermissionsOrganization(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/permissions/workflow'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-get-default-workflow-permissions.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getGithubActionsDefaultWorkflowPermissionsOrganization');
    }
    Future<void> actions/setGithubActionsDefaultWorkflowPermissionsOrganization(
        String org,
        { Actions-set-default-workflow-permissions? actions-set-default-workflow-permissions, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/permissions/workflow'
            .replaceAll('{org}', "${ org }")
            ,
            body: actions-set-default-workflow-permissions?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setGithubActionsDefaultWorkflowPermissionsOrganization');
    }
    Future<Actions/listSelfHostedRunnerGroupsForOrg200Response> actions/listSelfHostedRunnerGroupsForOrg(
        String org,
        { int? perPage = 30,int? page = 1,String? visibleToRepository, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/runner-groups'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'visible_to_repository': ?visibleToRepository.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/listSelfHostedRunnerGroupsForOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listSelfHostedRunnerGroupsForOrg');
    }
    Future<Runner-groups-org> actions/createSelfHostedRunnerGroupForOrg(
        String org,
        Actions/createSelfHostedRunnerGroupForOrgRequest actions/createSelfHostedRunnerGroupForOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/actions/runner-groups'
            .replaceAll('{org}', "${ org }")
            ,
            body: actions/createSelfHostedRunnerGroupForOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Runner-groups-org.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createSelfHostedRunnerGroupForOrg');
    }
    Future<Runner-groups-org> actions/getSelfHostedRunnerGroupForOrg(
        String org,
        int runnerGroupId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/runner-groups/{runner_group_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_group_id}', "${ runnerGroupId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Runner-groups-org.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getSelfHostedRunnerGroupForOrg');
    }
    Future<void> actions/deleteSelfHostedRunnerGroupFromOrg(
        String org,
        int runnerGroupId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/actions/runner-groups/{runner_group_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_group_id}', "${ runnerGroupId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteSelfHostedRunnerGroupFromOrg');
    }
    Future<Runner-groups-org> actions/updateSelfHostedRunnerGroupForOrg(
        String org,
        int runnerGroupId,
        Actions/updateSelfHostedRunnerGroupForOrgRequest actions/updateSelfHostedRunnerGroupForOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/actions/runner-groups/{runner_group_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_group_id}', "${ runnerGroupId }")
            ,
            body: actions/updateSelfHostedRunnerGroupForOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Runner-groups-org.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/updateSelfHostedRunnerGroupForOrg');
    }
    Future<Actions/listGithubHostedRunnersInGroupForOrg200Response> actions/listGithubHostedRunnersInGroupForOrg(
        String org,
        int runnerGroupId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/hosted-runners'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_group_id}', "${ runnerGroupId }")
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
            return Actions/listGithubHostedRunnersInGroupForOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listGithubHostedRunnersInGroupForOrg');
    }
    Future<Actions/listRepoAccessToSelfHostedRunnerGroupInOrg200Response> actions/listRepoAccessToSelfHostedRunnerGroupInOrg(
        String org,
        int runnerGroupId,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_group_id}', "${ runnerGroupId }")
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
            return Actions/listRepoAccessToSelfHostedRunnerGroupInOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listRepoAccessToSelfHostedRunnerGroupInOrg');
    }
    Future<void> actions/setRepoAccessToSelfHostedRunnerGroupInOrg(
        String org,
        int runnerGroupId,
        Actions/setRepoAccessToSelfHostedRunnerGroupInOrgRequest actions/setRepoAccessToSelfHostedRunnerGroupInOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_group_id}', "${ runnerGroupId }")
            ,
            body: actions/setRepoAccessToSelfHostedRunnerGroupInOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setRepoAccessToSelfHostedRunnerGroupInOrg');
    }
    Future<void> actions/addRepoAccessToSelfHostedRunnerGroupInOrg(
        String org,
        int runnerGroupId,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories/{repository_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_group_id}', "${ runnerGroupId }")
                        .replaceAll('{repository_id}', "${ repositoryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/addRepoAccessToSelfHostedRunnerGroupInOrg');
    }
    Future<void> actions/removeRepoAccessToSelfHostedRunnerGroupInOrg(
        String org,
        int runnerGroupId,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories/{repository_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_group_id}', "${ runnerGroupId }")
                        .replaceAll('{repository_id}', "${ repositoryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/removeRepoAccessToSelfHostedRunnerGroupInOrg');
    }
    Future<Actions/listSelfHostedRunnersInGroupForOrg200Response> actions/listSelfHostedRunnersInGroupForOrg(
        String org,
        int runnerGroupId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/runners'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_group_id}', "${ runnerGroupId }")
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
            return Actions/listSelfHostedRunnersInGroupForOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listSelfHostedRunnersInGroupForOrg');
    }
    Future<void> actions/setSelfHostedRunnersInGroupForOrg(
        String org,
        int runnerGroupId,
        Actions/setSelfHostedRunnersInGroupForOrgRequest actions/setSelfHostedRunnersInGroupForOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/runners'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_group_id}', "${ runnerGroupId }")
            ,
            body: actions/setSelfHostedRunnersInGroupForOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setSelfHostedRunnersInGroupForOrg');
    }
    Future<void> actions/addSelfHostedRunnerToGroupForOrg(
        String org,
        int runnerGroupId,
        int runnerId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/runners/{runner_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_group_id}', "${ runnerGroupId }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/addSelfHostedRunnerToGroupForOrg');
    }
    Future<void> actions/removeSelfHostedRunnerFromGroupForOrg(
        String org,
        int runnerGroupId,
        int runnerId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/runners/{runner_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_group_id}', "${ runnerGroupId }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/removeSelfHostedRunnerFromGroupForOrg');
    }
    Future<Actions/listSelfHostedRunnersForOrg200Response> actions/listSelfHostedRunnersForOrg(
        String org,
        { String? name,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/runners'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'name': ?name.toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/listSelfHostedRunnersForOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listSelfHostedRunnersForOrg');
    }
    Future<List<Runner-application>> actions/listRunnerApplicationsForOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/runners/downloads'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Runner-application>((e) => Runner-application.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listRunnerApplicationsForOrg');
    }
    Future<ActionsRunnerJitconfigResponse> actions/generateRunnerJitconfigForOrg(
        String org,
        Actions/generateRunnerJitconfigForOrgRequest actions/generateRunnerJitconfigForOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/actions/runners/generate-jitconfig'
            .replaceAll('{org}', "${ org }")
            ,
            body: actions/generateRunnerJitconfigForOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ActionsRunnerJitconfigResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/generateRunnerJitconfigForOrg');
    }
    Future<Authentication-token> actions/createRegistrationTokenForOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/actions/runners/registration-token'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Authentication-token.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createRegistrationTokenForOrg');
    }
    Future<Authentication-token> actions/createRemoveTokenForOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/actions/runners/remove-token'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Authentication-token.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createRemoveTokenForOrg');
    }
    Future<Runner> actions/getSelfHostedRunnerForOrg(
        String org,
        int runnerId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/runners/{runner_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Runner.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getSelfHostedRunnerForOrg');
    }
    Future<void> actions/deleteSelfHostedRunnerFromOrg(
        String org,
        int runnerId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/actions/runners/{runner_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteSelfHostedRunnerFromOrg');
    }
    Future<ActionsRunnerLabelsResponse> actions/listLabelsForSelfHostedRunnerForOrg(
        String org,
        int runnerId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/runners/{runner_id}/labels'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ActionsRunnerLabelsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listLabelsForSelfHostedRunnerForOrg');
    }
    Future<ActionsRunnerLabelsResponse> actions/addCustomLabelsToSelfHostedRunnerForOrg(
        String org,
        int runnerId,
        Actions/addCustomLabelsToSelfHostedRunnerForOrgRequest actions/addCustomLabelsToSelfHostedRunnerForOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/actions/runners/{runner_id}/labels'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
            body: actions/addCustomLabelsToSelfHostedRunnerForOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ActionsRunnerLabelsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/addCustomLabelsToSelfHostedRunnerForOrg');
    }
    Future<ActionsRunnerLabelsResponse> actions/setCustomLabelsForSelfHostedRunnerForOrg(
        String org,
        int runnerId,
        Actions/setCustomLabelsForSelfHostedRunnerForOrgRequest actions/setCustomLabelsForSelfHostedRunnerForOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/runners/{runner_id}/labels'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
            body: actions/setCustomLabelsForSelfHostedRunnerForOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ActionsRunnerLabelsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setCustomLabelsForSelfHostedRunnerForOrg');
    }
    Future<ActionsRunnerLabelsReadonlyResponse> actions/removeAllCustomLabelsFromSelfHostedRunnerForOrg(
        String org,
        int runnerId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/actions/runners/{runner_id}/labels'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ActionsRunnerLabelsReadonlyResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/removeAllCustomLabelsFromSelfHostedRunnerForOrg');
    }
    Future<ActionsRunnerLabelsResponse> actions/removeCustomLabelFromSelfHostedRunnerForOrg(
        String org,
        int runnerId,
        String name,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/actions/runners/{runner_id}/labels/{name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{runner_id}', "${ runnerId }")
                        .replaceAll('{name}', "${ name }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ActionsRunnerLabelsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/removeCustomLabelFromSelfHostedRunnerForOrg');
    }
    Future<Actions/listOrgSecrets200Response> actions/listOrgSecrets(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/secrets'
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
            return Actions/listOrgSecrets200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listOrgSecrets');
    }
    Future<Actions-public-key> actions/getOrgPublicKey(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/secrets/public-key'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-public-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getOrgPublicKey');
    }
    Future<Organization-actions-secret> actions/getOrgSecret(
        String org,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/secrets/{secret_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Organization-actions-secret.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getOrgSecret');
    }
    Future<Actions/createOrUpdateOrgSecretResponse> actions/createOrUpdateOrgSecret(
        String org,
        String secretName,
        Actions/createOrUpdateOrgSecretRequest actions/createOrUpdateOrgSecretRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/secrets/{secret_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: actions/createOrUpdateOrgSecretRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/createOrUpdateOrgSecretResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createOrUpdateOrgSecret');
    }
    Future<void> actions/deleteOrgSecret(
        String org,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/actions/secrets/{secret_name}'
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

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteOrgSecret');
    }
    Future<Actions/listSelectedReposForOrgSecret200Response> actions/listSelectedReposForOrgSecret(
        String org,
        String secretName,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/secrets/{secret_name}/repositories'
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
            return Actions/listSelectedReposForOrgSecret200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listSelectedReposForOrgSecret');
    }
    Future<void> actions/setSelectedReposForOrgSecret(
        String org,
        String secretName,
        Actions/setSelectedReposForOrgSecretRequest actions/setSelectedReposForOrgSecretRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/secrets/{secret_name}/repositories'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: actions/setSelectedReposForOrgSecretRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setSelectedReposForOrgSecret');
    }
    Future<void> actions/addSelectedRepoToOrgSecret(
        String org,
        String secretName,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/secrets/{secret_name}/repositories/{repository_id}'
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

        throw ApiException(response.statusCode, 'Unhandled response from $actions/addSelectedRepoToOrgSecret');
    }
    Future<void> actions/removeSelectedRepoFromOrgSecret(
        String org,
        String secretName,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/actions/secrets/{secret_name}/repositories/{repository_id}'
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

        throw ApiException(response.statusCode, 'Unhandled response from $actions/removeSelectedRepoFromOrgSecret');
    }
    Future<Actions/listOrgVariables200Response> actions/listOrgVariables(
        String org,
        { int? perPage = 10,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/variables'
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
            return Actions/listOrgVariables200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listOrgVariables');
    }
    Future<Empty-object> actions/createOrgVariable(
        String org,
        Actions/createOrgVariableRequest actions/createOrgVariableRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/actions/variables'
            .replaceAll('{org}', "${ org }")
            ,
            body: actions/createOrgVariableRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createOrgVariable');
    }
    Future<Organization-actions-variable> actions/getOrgVariable(
        String org,
        String name,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/variables/{name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{name}', "${ name }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Organization-actions-variable.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getOrgVariable');
    }
    Future<void> actions/deleteOrgVariable(
        String org,
        String name,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/actions/variables/{name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{name}', "${ name }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteOrgVariable');
    }
    Future<void> actions/updateOrgVariable(
        String org,
        String name,
        Actions/updateOrgVariableRequest actions/updateOrgVariableRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/actions/variables/{name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{name}', "${ name }")
            ,
            body: actions/updateOrgVariableRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/updateOrgVariable');
    }
    Future<Actions/listSelectedReposForOrgVariable200Response> actions/listSelectedReposForOrgVariable(
        String org,
        String name,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/variables/{name}/repositories'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{name}', "${ name }")
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
            return Actions/listSelectedReposForOrgVariable200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listSelectedReposForOrgVariable');
    }
    Future<void> actions/setSelectedReposForOrgVariable(
        String org,
        String name,
        Actions/setSelectedReposForOrgVariableRequest actions/setSelectedReposForOrgVariableRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/variables/{name}/repositories'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{name}', "${ name }")
            ,
            body: actions/setSelectedReposForOrgVariableRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setSelectedReposForOrgVariable');
    }
    Future<void> actions/addSelectedRepoToOrgVariable(
        String org,
        String name,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/variables/{name}/repositories/{repository_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{name}', "${ name }")
                        .replaceAll('{repository_id}', "${ repositoryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/addSelectedRepoToOrgVariable');
    }
    Future<void> actions/removeSelectedRepoFromOrgVariable(
        String org,
        String name,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/actions/variables/{name}/repositories/{repository_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{name}', "${ name }")
                        .replaceAll('{repository_id}', "${ repositoryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/removeSelectedRepoFromOrgVariable');
    }
    Future<Actions/listArtifactsForRepo200Response> actions/listArtifactsForRepo(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1,String? name, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/artifacts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'name': ?name.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/listArtifactsForRepo200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listArtifactsForRepo');
    }
    Future<Artifact> actions/getArtifact(
        String owner,
        String repo,
        int artifactId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/artifacts/{artifact_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{artifact_id}', "${ artifactId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Artifact.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getArtifact');
    }
    Future<void> actions/deleteArtifact(
        String owner,
        String repo,
        int artifactId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/actions/artifacts/{artifact_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{artifact_id}', "${ artifactId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteArtifact');
    }
    Future<void> actions/downloadArtifact(
        String owner,
        String repo,
        int artifactId,
        String archiveFormat,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/artifacts/{artifact_id}/{archive_format}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{artifact_id}', "${ artifactId }")
                        .replaceAll('{archive_format}', "${ archiveFormat }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/downloadArtifact');
    }
    Future<Actions-cache-usage-by-repository> actions/getActionsCacheUsage(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/cache/usage'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-cache-usage-by-repository.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getActionsCacheUsage');
    }
    Future<Actions-cache-list> actions/getActionsCacheList(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1,String? ref,String? key,Actions-cache-list-sort? sort = Actions-cache-list-sort.lastAccessedAt,Direction? direction = Direction.desc, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/caches'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'ref': ?ref.toString(),
                'key': ?key.toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-cache-list.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getActionsCacheList');
    }
    Future<Actions-cache-list> actions/deleteActionsCacheByKey(
        String owner,
        String repo,
        String key,
        { String? ref, }
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/actions/caches'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'key': key.toString(),
                'ref': ?ref.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-cache-list.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteActionsCacheByKey');
    }
    Future<void> actions/deleteActionsCacheById(
        String owner,
        String repo,
        int cacheId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/actions/caches/{cache_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{cache_id}', "${ cacheId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteActionsCacheById');
    }
    Future<Job> actions/getJobForWorkflowRun(
        String owner,
        String repo,
        int jobId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/jobs/{job_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{job_id}', "${ jobId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Job.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getJobForWorkflowRun');
    }
    Future<void> actions/downloadJobLogsForWorkflowRun(
        String owner,
        String repo,
        int jobId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/jobs/{job_id}/logs'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{job_id}', "${ jobId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/downloadJobLogsForWorkflowRun');
    }
    Future<Empty-object> actions/reRunJobForWorkflowRun(
        String owner,
        String repo,
        int jobId,
        { Actions/reRunJobForWorkflowRunRequest? actions/reRunJobForWorkflowRunRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/jobs/{job_id}/rerun'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{job_id}', "${ jobId }")
            ,
            body: actions/reRunJobForWorkflowRunRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/reRunJobForWorkflowRun');
    }
    Future<Oidc-custom-sub-repo> actions/getCustomOidcSubClaimForRepo(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/oidc/customization/sub'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Oidc-custom-sub-repo.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getCustomOidcSubClaimForRepo');
    }
    Future<Empty-object> actions/setCustomOidcSubClaimForRepo(
        String owner,
        String repo,
        Actions/setCustomOidcSubClaimForRepoRequest actions/setCustomOidcSubClaimForRepoRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/actions/oidc/customization/sub'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: actions/setCustomOidcSubClaimForRepoRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setCustomOidcSubClaimForRepo');
    }
    Future<Actions/listRepoOrganizationSecrets200Response> actions/listRepoOrganizationSecrets(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/organization-secrets'
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
            return Actions/listRepoOrganizationSecrets200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listRepoOrganizationSecrets');
    }
    Future<Actions/listRepoOrganizationVariables200Response> actions/listRepoOrganizationVariables(
        String owner,
        String repo,
        { int? perPage = 10,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/organization-variables'
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
            return Actions/listRepoOrganizationVariables200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listRepoOrganizationVariables');
    }
    Future<Actions-repository-permissions> actions/getGithubActionsPermissionsRepository(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/permissions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-repository-permissions.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getGithubActionsPermissionsRepository');
    }
    Future<void> actions/setGithubActionsPermissionsRepository(
        String owner,
        String repo,
        Actions/setGithubActionsPermissionsRepositoryRequest actions/setGithubActionsPermissionsRepositoryRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/actions/permissions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: actions/setGithubActionsPermissionsRepositoryRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setGithubActionsPermissionsRepository');
    }
    Future<Actions-workflow-access-to-repository> actions/getWorkflowAccessToRepository(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/permissions/access'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-workflow-access-to-repository.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getWorkflowAccessToRepository');
    }
    Future<void> actions/setWorkflowAccessToRepository(
        String owner,
        String repo,
        Actions-workflow-access-to-repository actions-workflow-access-to-repository,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/actions/permissions/access'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: actions-workflow-access-to-repository.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setWorkflowAccessToRepository');
    }
    Future<Selected-actions> actions/getAllowedActionsRepository(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/permissions/selected-actions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Selected-actions.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getAllowedActionsRepository');
    }
    Future<void> actions/setAllowedActionsRepository(
        String owner,
        String repo,
        { Selected-actions? selected-actions, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/actions/permissions/selected-actions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: selected-actions?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setAllowedActionsRepository');
    }
    Future<Actions-get-default-workflow-permissions> actions/getGithubActionsDefaultWorkflowPermissionsRepository(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/permissions/workflow'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-get-default-workflow-permissions.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getGithubActionsDefaultWorkflowPermissionsRepository');
    }
    Future<void> actions/setGithubActionsDefaultWorkflowPermissionsRepository(
        String owner,
        String repo,
        Actions-set-default-workflow-permissions actions-set-default-workflow-permissions,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/actions/permissions/workflow'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: actions-set-default-workflow-permissions.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setGithubActionsDefaultWorkflowPermissionsRepository');
    }
    Future<Actions/listSelfHostedRunnersForRepo200Response> actions/listSelfHostedRunnersForRepo(
        String owner,
        String repo,
        { String? name,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runners'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'name': ?name.toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/listSelfHostedRunnersForRepo200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listSelfHostedRunnersForRepo');
    }
    Future<List<Runner-application>> actions/listRunnerApplicationsForRepo(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runners/downloads'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Runner-application>((e) => Runner-application.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listRunnerApplicationsForRepo');
    }
    Future<ActionsRunnerJitconfigResponse> actions/generateRunnerJitconfigForRepo(
        String owner,
        String repo,
        Actions/generateRunnerJitconfigForRepoRequest actions/generateRunnerJitconfigForRepoRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/runners/generate-jitconfig'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: actions/generateRunnerJitconfigForRepoRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ActionsRunnerJitconfigResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/generateRunnerJitconfigForRepo');
    }
    Future<Authentication-token> actions/createRegistrationTokenForRepo(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/runners/registration-token'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Authentication-token.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createRegistrationTokenForRepo');
    }
    Future<Authentication-token> actions/createRemoveTokenForRepo(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/runners/remove-token'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Authentication-token.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createRemoveTokenForRepo');
    }
    Future<Runner> actions/getSelfHostedRunnerForRepo(
        String owner,
        String repo,
        int runnerId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runners/{runner_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Runner.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getSelfHostedRunnerForRepo');
    }
    Future<void> actions/deleteSelfHostedRunnerFromRepo(
        String owner,
        String repo,
        int runnerId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/actions/runners/{runner_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteSelfHostedRunnerFromRepo');
    }
    Future<ActionsRunnerLabelsResponse> actions/listLabelsForSelfHostedRunnerForRepo(
        String owner,
        String repo,
        int runnerId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runners/{runner_id}/labels'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ActionsRunnerLabelsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listLabelsForSelfHostedRunnerForRepo');
    }
    Future<ActionsRunnerLabelsResponse> actions/addCustomLabelsToSelfHostedRunnerForRepo(
        String owner,
        String repo,
        int runnerId,
        Actions/addCustomLabelsToSelfHostedRunnerForRepoRequest actions/addCustomLabelsToSelfHostedRunnerForRepoRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/runners/{runner_id}/labels'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
            body: actions/addCustomLabelsToSelfHostedRunnerForRepoRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ActionsRunnerLabelsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/addCustomLabelsToSelfHostedRunnerForRepo');
    }
    Future<ActionsRunnerLabelsResponse> actions/setCustomLabelsForSelfHostedRunnerForRepo(
        String owner,
        String repo,
        int runnerId,
        Actions/setCustomLabelsForSelfHostedRunnerForRepoRequest actions/setCustomLabelsForSelfHostedRunnerForRepoRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/actions/runners/{runner_id}/labels'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
            body: actions/setCustomLabelsForSelfHostedRunnerForRepoRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ActionsRunnerLabelsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/setCustomLabelsForSelfHostedRunnerForRepo');
    }
    Future<ActionsRunnerLabelsReadonlyResponse> actions/removeAllCustomLabelsFromSelfHostedRunnerForRepo(
        String owner,
        String repo,
        int runnerId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/actions/runners/{runner_id}/labels'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{runner_id}', "${ runnerId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ActionsRunnerLabelsReadonlyResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/removeAllCustomLabelsFromSelfHostedRunnerForRepo');
    }
    Future<ActionsRunnerLabelsResponse> actions/removeCustomLabelFromSelfHostedRunnerForRepo(
        String owner,
        String repo,
        int runnerId,
        String name,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/actions/runners/{runner_id}/labels/{name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{runner_id}', "${ runnerId }")
                        .replaceAll('{name}', "${ name }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ActionsRunnerLabelsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/removeCustomLabelFromSelfHostedRunnerForRepo');
    }
    Future<Actions/listWorkflowRunsForRepo200Response> actions/listWorkflowRunsForRepo(
        String owner,
        String repo,
        { String? actor,String? branch,String? event,Workflow-run-status? status,int? perPage = 30,int? page = 1,DateTime? created,bool? excludePullRequests = false,int? checkSuiteId,String? headSha, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runs'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'actor': ?actor.toString(),
                'branch': ?branch.toString(),
                'event': ?event.toString(),
                'status': ?status?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'created': ?created?.toIso8601String().toString(),
                'exclude_pull_requests': ?excludePullRequests.toString(),
                'check_suite_id': ?checkSuiteId.toString(),
                'head_sha': ?headSha.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/listWorkflowRunsForRepo200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listWorkflowRunsForRepo');
    }
    Future<Workflow-run> actions/getWorkflowRun(
        String owner,
        String repo,
        int runId,
        { bool? excludePullRequests = false, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
            queryParameters: {
                'exclude_pull_requests': ?excludePullRequests.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Workflow-run.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getWorkflowRun');
    }
    Future<void> actions/deleteWorkflowRun(
        String owner,
        String repo,
        int runId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteWorkflowRun');
    }
    Future<List<Environment-approvals>> actions/getReviewsForRun(
        String owner,
        String repo,
        int runId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/approvals'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Environment-approvals>((e) => Environment-approvals.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getReviewsForRun');
    }
    Future<Empty-object> actions/approveWorkflowRun(
        String owner,
        String repo,
        int runId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/approve'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/approveWorkflowRun');
    }
    Future<Actions/listWorkflowRunArtifacts200Response> actions/listWorkflowRunArtifacts(
        String owner,
        String repo,
        int runId,
        { int? perPage = 30,int? page = 1,String? name, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/artifacts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'name': ?name.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/listWorkflowRunArtifacts200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listWorkflowRunArtifacts');
    }
    Future<Workflow-run> actions/getWorkflowRunAttempt(
        String owner,
        String repo,
        int runId,
        int attemptNumber,
        { bool? excludePullRequests = false, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/attempts/{attempt_number}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
                        .replaceAll('{attempt_number}', "${ attemptNumber }")
            ,
            queryParameters: {
                'exclude_pull_requests': ?excludePullRequests.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Workflow-run.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getWorkflowRunAttempt');
    }
    Future<Actions/listJobsForWorkflowRunAttempt200Response> actions/listJobsForWorkflowRunAttempt(
        String owner,
        String repo,
        int runId,
        int attemptNumber,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/attempts/{attempt_number}/jobs'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
                        .replaceAll('{attempt_number}', "${ attemptNumber }")
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
            return Actions/listJobsForWorkflowRunAttempt200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listJobsForWorkflowRunAttempt');
    }
    Future<void> actions/downloadWorkflowRunAttemptLogs(
        String owner,
        String repo,
        int runId,
        int attemptNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/attempts/{attempt_number}/logs'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
                        .replaceAll('{attempt_number}', "${ attemptNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/downloadWorkflowRunAttemptLogs');
    }
    Future<Empty-object> actions/cancelWorkflowRun(
        String owner,
        String repo,
        int runId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/cancel'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/cancelWorkflowRun');
    }
    Future<void> actions/reviewCustomGatesForRun(
        String owner,
        String repo,
        int runId,
        Actions/reviewCustomGatesForRunRequest actions/reviewCustomGatesForRunRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/deployment_protection_rule'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
            body: actions/reviewCustomGatesForRunRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/reviewCustomGatesForRun');
    }
    Future<Empty-object> actions/forceCancelWorkflowRun(
        String owner,
        String repo,
        int runId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/force-cancel'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/forceCancelWorkflowRun');
    }
    Future<Actions/listJobsForWorkflowRun200Response> actions/listJobsForWorkflowRun(
        String owner,
        String repo,
        int runId,
        { Actions/listJobsForWorkflowRunParameter3? filter = Actions/listJobsForWorkflowRunParameter3.latest,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/jobs'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
            queryParameters: {
                'filter': ?filter?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/listJobsForWorkflowRun200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listJobsForWorkflowRun');
    }
    Future<void> actions/downloadWorkflowRunLogs(
        String owner,
        String repo,
        int runId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/logs'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/downloadWorkflowRunLogs');
    }
    Future<void> actions/deleteWorkflowRunLogs(
        String owner,
        String repo,
        int runId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/logs'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteWorkflowRunLogs');
    }
    Future<List<Pending-deployment>> actions/getPendingDeploymentsForRun(
        String owner,
        String repo,
        int runId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/pending_deployments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Pending-deployment>((e) => Pending-deployment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getPendingDeploymentsForRun');
    }
    Future<List<Deployment>> actions/reviewPendingDeploymentsForRun(
        String owner,
        String repo,
        int runId,
        Actions/reviewPendingDeploymentsForRunRequest actions/reviewPendingDeploymentsForRunRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/pending_deployments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
            body: actions/reviewPendingDeploymentsForRunRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Deployment>((e) => Deployment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/reviewPendingDeploymentsForRun');
    }
    Future<Empty-object> actions/reRunWorkflow(
        String owner,
        String repo,
        int runId,
        { Actions/reRunWorkflowRequest? actions/reRunWorkflowRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/rerun'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
            body: actions/reRunWorkflowRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/reRunWorkflow');
    }
    Future<Empty-object> actions/reRunWorkflowFailedJobs(
        String owner,
        String repo,
        int runId,
        { Actions/reRunWorkflowFailedJobsRequest? actions/reRunWorkflowFailedJobsRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/rerun-failed-jobs'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
            body: actions/reRunWorkflowFailedJobsRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/reRunWorkflowFailedJobs');
    }
    Future<Workflow-run-usage> actions/getWorkflowRunUsage(
        String owner,
        String repo,
        int runId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/runs/{run_id}/timing'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{run_id}', "${ runId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Workflow-run-usage.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getWorkflowRunUsage');
    }
    Future<Actions/listRepoSecrets200Response> actions/listRepoSecrets(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/secrets'
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
            return Actions/listRepoSecrets200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listRepoSecrets');
    }
    Future<Actions-public-key> actions/getRepoPublicKey(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/secrets/public-key'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-public-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getRepoPublicKey');
    }
    Future<Actions-secret> actions/getRepoSecret(
        String owner,
        String repo,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/secrets/{secret_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-secret.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getRepoSecret');
    }
    Future<Actions/createOrUpdateRepoSecretResponse> actions/createOrUpdateRepoSecret(
        String owner,
        String repo,
        String secretName,
        Actions/createOrUpdateRepoSecretRequest actions/createOrUpdateRepoSecretRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/actions/secrets/{secret_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: actions/createOrUpdateRepoSecretRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/createOrUpdateRepoSecretResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createOrUpdateRepoSecret');
    }
    Future<void> actions/deleteRepoSecret(
        String owner,
        String repo,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/actions/secrets/{secret_name}'
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

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteRepoSecret');
    }
    Future<Actions/listRepoVariables200Response> actions/listRepoVariables(
        String owner,
        String repo,
        { int? perPage = 10,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/variables'
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
            return Actions/listRepoVariables200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listRepoVariables');
    }
    Future<Empty-object> actions/createRepoVariable(
        String owner,
        String repo,
        Actions/createRepoVariableRequest actions/createRepoVariableRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/variables'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: actions/createRepoVariableRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createRepoVariable');
    }
    Future<Actions-variable> actions/getRepoVariable(
        String owner,
        String repo,
        String name,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/variables/{name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{name}', "${ name }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-variable.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getRepoVariable');
    }
    Future<void> actions/deleteRepoVariable(
        String owner,
        String repo,
        String name,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/actions/variables/{name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{name}', "${ name }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteRepoVariable');
    }
    Future<void> actions/updateRepoVariable(
        String owner,
        String repo,
        String name,
        Actions/updateRepoVariableRequest actions/updateRepoVariableRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/actions/variables/{name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{name}', "${ name }")
            ,
            body: actions/updateRepoVariableRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/updateRepoVariable');
    }
    Future<Actions/listRepoWorkflows200Response> actions/listRepoWorkflows(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/workflows'
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
            return Actions/listRepoWorkflows200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listRepoWorkflows');
    }
    Future<Workflow> actions/getWorkflow(
        String owner,
        String repo,
        Workflow-id workflowId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/workflows/{workflow_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{workflow_id}', "${ workflowId.toJson() }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Workflow.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getWorkflow');
    }
    Future<void> actions/disableWorkflow(
        String owner,
        String repo,
        Workflow-id workflowId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/actions/workflows/{workflow_id}/disable'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{workflow_id}', "${ workflowId.toJson() }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/disableWorkflow');
    }
    Future<void> actions/createWorkflowDispatch(
        String owner,
        String repo,
        Workflow-id workflowId,
        Actions/createWorkflowDispatchRequest actions/createWorkflowDispatchRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/actions/workflows/{workflow_id}/dispatches'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{workflow_id}', "${ workflowId.toJson() }")
            ,
            body: actions/createWorkflowDispatchRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createWorkflowDispatch');
    }
    Future<void> actions/enableWorkflow(
        String owner,
        String repo,
        Workflow-id workflowId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/actions/workflows/{workflow_id}/enable'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{workflow_id}', "${ workflowId.toJson() }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/enableWorkflow');
    }
    Future<Actions/listWorkflowRuns200Response> actions/listWorkflowRuns(
        String owner,
        String repo,
        Workflow-id workflowId,
        { String? actor,String? branch,String? event,Workflow-run-status? status,int? perPage = 30,int? page = 1,DateTime? created,bool? excludePullRequests = false,int? checkSuiteId,String? headSha, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/workflows/{workflow_id}/runs'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{workflow_id}', "${ workflowId.toJson() }")
            ,
            queryParameters: {
                'actor': ?actor.toString(),
                'branch': ?branch.toString(),
                'event': ?event.toString(),
                'status': ?status?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'created': ?created?.toIso8601String().toString(),
                'exclude_pull_requests': ?excludePullRequests.toString(),
                'check_suite_id': ?checkSuiteId.toString(),
                'head_sha': ?headSha.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/listWorkflowRuns200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listWorkflowRuns');
    }
    Future<Workflow-usage> actions/getWorkflowUsage(
        String owner,
        String repo,
        Workflow-id workflowId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/actions/workflows/{workflow_id}/timing'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{workflow_id}', "${ workflowId.toJson() }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Workflow-usage.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getWorkflowUsage');
    }
    Future<Actions/listEnvironmentSecrets200Response> actions/listEnvironmentSecrets(
        String owner,
        String repo,
        String environmentName,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/secrets'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
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
            return Actions/listEnvironmentSecrets200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listEnvironmentSecrets');
    }
    Future<Actions-public-key> actions/getEnvironmentPublicKey(
        String owner,
        String repo,
        String environmentName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/secrets/public-key'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-public-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getEnvironmentPublicKey');
    }
    Future<Actions-secret> actions/getEnvironmentSecret(
        String owner,
        String repo,
        String environmentName,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/secrets/{secret_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-secret.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getEnvironmentSecret');
    }
    Future<Actions/createOrUpdateEnvironmentSecretResponse> actions/createOrUpdateEnvironmentSecret(
        String owner,
        String repo,
        String environmentName,
        String secretName,
        Actions/createOrUpdateEnvironmentSecretRequest actions/createOrUpdateEnvironmentSecretRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/secrets/{secret_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: actions/createOrUpdateEnvironmentSecretRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions/createOrUpdateEnvironmentSecretResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createOrUpdateEnvironmentSecret');
    }
    Future<void> actions/deleteEnvironmentSecret(
        String owner,
        String repo,
        String environmentName,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/secrets/{secret_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteEnvironmentSecret');
    }
    Future<Actions/listEnvironmentVariables200Response> actions/listEnvironmentVariables(
        String owner,
        String repo,
        String environmentName,
        { int? perPage = 10,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/variables'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
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
            return Actions/listEnvironmentVariables200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/listEnvironmentVariables');
    }
    Future<Empty-object> actions/createEnvironmentVariable(
        String owner,
        String repo,
        String environmentName,
        Actions/createEnvironmentVariableRequest actions/createEnvironmentVariableRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/variables'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
            ,
            body: actions/createEnvironmentVariableRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/createEnvironmentVariable');
    }
    Future<Actions-variable> actions/getEnvironmentVariable(
        String owner,
        String repo,
        String environmentName,
        String name,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/variables/{name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
                        .replaceAll('{name}', "${ name }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-variable.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/getEnvironmentVariable');
    }
    Future<void> actions/deleteEnvironmentVariable(
        String owner,
        String repo,
        String name,
        String environmentName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/variables/{name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{name}', "${ name }")
                        .replaceAll('{environment_name}', "${ environmentName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/deleteEnvironmentVariable');
    }
    Future<void> actions/updateEnvironmentVariable(
        String owner,
        String repo,
        String name,
        String environmentName,
        Actions/updateEnvironmentVariableRequest actions/updateEnvironmentVariableRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/variables/{name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{name}', "${ name }")
                        .replaceAll('{environment_name}', "${ environmentName }")
            ,
            body: actions/updateEnvironmentVariableRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $actions/updateEnvironmentVariable');
    }
}
