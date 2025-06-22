import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/apps/create_from_manifest201_response.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/apps/create_from_manifest201_response.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/apps/update_webhook_config_for_app_request.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook-delivery-item.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/hook-delivery-item.dart';
import 'package:github/model/hook-delivery.dart';
import 'package:github/model/hook-delivery_request.dart';
import 'package:github/model/hook-delivery_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/hook-delivery.dart';
import 'package:github/model/hook-delivery_request.dart';
import 'package:github/model/hook-delivery_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/integration-installation-request.dart';
import 'package:github/model/integration-installation-request_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/integration-installation-request.dart';
import 'package:github/model/integration-installation-request_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/apps/create_installation_access_token_request.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/installation-token.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/installation-token_repository_selection.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/installation-token.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/installation-token_repository_selection.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/apps/delete_authorization_request.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/apps/check_token_request.dart';
import 'package:github/model/authorization.dart';
import 'package:github/model/authorization_app.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-scoped-installation.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-scoped-installation_repository_selection.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/authorization.dart';
import 'package:github/model/authorization_app.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-scoped-installation.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-scoped-installation_repository_selection.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/apps/delete_token_request.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/apps/reset_token_request.dart';
import 'package:github/model/authorization.dart';
import 'package:github/model/authorization_app.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-scoped-installation.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-scoped-installation_repository_selection.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/authorization.dart';
import 'package:github/model/authorization_app.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-scoped-installation.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-scoped-installation_repository_selection.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/apps/scope_token_request.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/authorization.dart';
import 'package:github/model/authorization_app.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-scoped-installation.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-scoped-installation_repository_selection.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/authorization.dart';
import 'package:github/model/authorization_app.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-scoped-installation.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-scoped-installation_repository_selection.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/apps/list_repos_accessible_to_installation200_response.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/apps/list_repos_accessible_to_installation200_response.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/marketplace-purchase.dart';
import 'package:github/model/marketplace-purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase_marketplace_purchase.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/marketplace-purchase.dart';
import 'package:github/model/marketplace-purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase_marketplace_purchase.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase.dart';
import 'package:github/model/marketplace-purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase_marketplace_purchase.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/sort.dart';
import 'package:github/model/apps/list_accounts_for_plan_parameter2.dart';
import 'package:github/model/marketplace-purchase.dart';
import 'package:github/model/marketplace-purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase_marketplace_purchase.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase.dart';
import 'package:github/model/marketplace-purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase_marketplace_purchase.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/marketplace-purchase.dart';
import 'package:github/model/marketplace-purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase_marketplace_purchase.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase.dart';
import 'package:github/model/marketplace-purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase_marketplace_purchase.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/sort.dart';
import 'package:github/model/apps/list_accounts_for_plan_stubbed_parameter2.dart';
import 'package:github/model/marketplace-purchase.dart';
import 'package:github/model/marketplace-purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase_marketplace_purchase.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/apps/list_installations_for_authenticated_user200_response.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/apps/list_installations_for_authenticated_user200_response.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/apps/list_installation_repos_for_authenticated_user200_response.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/apps/list_installation_repos_for_authenticated_user200_response.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/user-marketplace-purchase.dart';
import 'package:github/model/marketplace-account.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/user-marketplace-purchase.dart';
import 'package:github/model/marketplace-account.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/user-marketplace-purchase.dart';
import 'package:github/model/marketplace-account.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/user-marketplace-purchase.dart';
import 'package:github/model/marketplace-account.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-simple-user.dart';
class AppsApi {
    AppsApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Integration> apps/getAuthenticated(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/app'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Integration.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/getAuthenticated');
    }
    Future<Apps/createFromManifest201Response> apps/createFromManifest(
        String code,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/app-manifests/{code}/conversions'
            .replaceAll('{code}', "${ code }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Apps/createFromManifest201Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/createFromManifest');
    }
    Future<Webhook-config> apps/getWebhookConfigForApp(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/app/hook/config'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Webhook-config.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/getWebhookConfigForApp');
    }
    Future<Webhook-config> apps/updateWebhookConfigForApp(
        Apps/updateWebhookConfigForAppRequest apps/updateWebhookConfigForAppRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/app/hook/config'
,
            body: apps/updateWebhookConfigForAppRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Webhook-config.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/updateWebhookConfigForApp');
    }
    Future<List<Hook-delivery-item>> apps/listWebhookDeliveries(
        { int? perPage = 30,String? cursor, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/app/hook/deliveries'
,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'cursor': ?cursor.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Hook-delivery-item>((e) => Hook-delivery-item.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/listWebhookDeliveries');
    }
    Future<Hook-delivery> apps/getWebhookDelivery(
        int deliveryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/app/hook/deliveries/{delivery_id}'
            .replaceAll('{delivery_id}', "${ deliveryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Hook-delivery.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/getWebhookDelivery');
    }
    Future<dynamic> apps/redeliverWebhookDelivery(
        int deliveryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/app/hook/deliveries/{delivery_id}/attempts'
            .replaceAll('{delivery_id}', "${ deliveryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/redeliverWebhookDelivery');
    }
    Future<List<Integration-installation-request>> apps/listInstallationRequestsForAuthenticatedApp(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/app/installation-requests'
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
            return (jsonDecode(response.body) as List).map<Integration-installation-request>((e) => Integration-installation-request.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/listInstallationRequestsForAuthenticatedApp');
    }
    Future<List<Installation>> apps/listInstallations(
        { int? perPage = 30,int? page = 1,DateTime? since,String? outdated, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/app/installations'
,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'since': ?since?.toIso8601String().toString(),
                'outdated': ?outdated.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Installation>((e) => Installation.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/listInstallations');
    }
    Future<Installation> apps/getInstallation(
        int installationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/app/installations/{installation_id}'
            .replaceAll('{installation_id}', "${ installationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Installation.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/getInstallation');
    }
    Future<void> apps/deleteInstallation(
        int installationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/app/installations/{installation_id}'
            .replaceAll('{installation_id}', "${ installationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/deleteInstallation');
    }
    Future<Installation-token> apps/createInstallationAccessToken(
        int installationId,
        { Apps/createInstallationAccessTokenRequest? apps/createInstallationAccessTokenRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/app/installations/{installation_id}/access_tokens'
            .replaceAll('{installation_id}', "${ installationId }")
            ,
            body: apps/createInstallationAccessTokenRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Installation-token.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/createInstallationAccessToken');
    }
    Future<void> apps/suspendInstallation(
        int installationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/app/installations/{installation_id}/suspended'
            .replaceAll('{installation_id}', "${ installationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/suspendInstallation');
    }
    Future<void> apps/unsuspendInstallation(
        int installationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/app/installations/{installation_id}/suspended'
            .replaceAll('{installation_id}', "${ installationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/unsuspendInstallation');
    }
    Future<void> apps/deleteAuthorization(
        String clientId,
        Apps/deleteAuthorizationRequest apps/deleteAuthorizationRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/applications/{client_id}/grant'
            .replaceAll('{client_id}', "${ clientId }")
            ,
            body: apps/deleteAuthorizationRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/deleteAuthorization');
    }
    Future<Authorization> apps/checkToken(
        String clientId,
        Apps/checkTokenRequest apps/checkTokenRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/applications/{client_id}/token'
            .replaceAll('{client_id}', "${ clientId }")
            ,
            body: apps/checkTokenRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Authorization.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/checkToken');
    }
    Future<void> apps/deleteToken(
        String clientId,
        Apps/deleteTokenRequest apps/deleteTokenRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/applications/{client_id}/token'
            .replaceAll('{client_id}', "${ clientId }")
            ,
            body: apps/deleteTokenRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/deleteToken');
    }
    Future<Authorization> apps/resetToken(
        String clientId,
        Apps/resetTokenRequest apps/resetTokenRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/applications/{client_id}/token'
            .replaceAll('{client_id}', "${ clientId }")
            ,
            body: apps/resetTokenRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Authorization.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/resetToken');
    }
    Future<Authorization> apps/scopeToken(
        String clientId,
        Apps/scopeTokenRequest apps/scopeTokenRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/applications/{client_id}/token/scoped'
            .replaceAll('{client_id}', "${ clientId }")
            ,
            body: apps/scopeTokenRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Authorization.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/scopeToken');
    }
    Future<Integration> apps/getBySlug(
        String appSlug,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/apps/{app_slug}'
            .replaceAll('{app_slug}', "${ appSlug }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Integration.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/getBySlug');
    }
    Future<Apps/listReposAccessibleToInstallation200Response> apps/listReposAccessibleToInstallation(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/installation/repositories'
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
            return Apps/listReposAccessibleToInstallation200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/listReposAccessibleToInstallation');
    }
    Future<void> apps/revokeInstallationAccessToken(
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/installation/token'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/revokeInstallationAccessToken');
    }
    Future<Marketplace-purchase> apps/getSubscriptionPlanForAccount(
        int accountId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/marketplace_listing/accounts/{account_id}'
            .replaceAll('{account_id}', "${ accountId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Marketplace-purchase.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/getSubscriptionPlanForAccount');
    }
    Future<List<Marketplace-listing-plan>> apps/listPlans(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/marketplace_listing/plans'
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
            return (jsonDecode(response.body) as List).map<Marketplace-listing-plan>((e) => Marketplace-listing-plan.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/listPlans');
    }
    Future<List<Marketplace-purchase>> apps/listAccountsForPlan(
        int planId,
        { Sort? sort = Sort.created,Apps/listAccountsForPlanParameter2? direction,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/marketplace_listing/plans/{plan_id}/accounts'
            .replaceAll('{plan_id}', "${ planId }")
            ,
            queryParameters: {
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Marketplace-purchase>((e) => Marketplace-purchase.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/listAccountsForPlan');
    }
    Future<Marketplace-purchase> apps/getSubscriptionPlanForAccountStubbed(
        int accountId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/marketplace_listing/stubbed/accounts/{account_id}'
            .replaceAll('{account_id}', "${ accountId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Marketplace-purchase.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/getSubscriptionPlanForAccountStubbed');
    }
    Future<List<Marketplace-listing-plan>> apps/listPlansStubbed(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/marketplace_listing/stubbed/plans'
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
            return (jsonDecode(response.body) as List).map<Marketplace-listing-plan>((e) => Marketplace-listing-plan.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/listPlansStubbed');
    }
    Future<List<Marketplace-purchase>> apps/listAccountsForPlanStubbed(
        int planId,
        { Sort? sort = Sort.created,Apps/listAccountsForPlanStubbedParameter2? direction,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/marketplace_listing/stubbed/plans/{plan_id}/accounts'
            .replaceAll('{plan_id}', "${ planId }")
            ,
            queryParameters: {
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Marketplace-purchase>((e) => Marketplace-purchase.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/listAccountsForPlanStubbed');
    }
    Future<Installation> apps/getOrgInstallation(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/installation'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Installation.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/getOrgInstallation');
    }
    Future<Installation> apps/getRepoInstallation(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/installation'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Installation.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/getRepoInstallation');
    }
    Future<Apps/listInstallationsForAuthenticatedUser200Response> apps/listInstallationsForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/installations'
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
            return Apps/listInstallationsForAuthenticatedUser200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/listInstallationsForAuthenticatedUser');
    }
    Future<Apps/listInstallationReposForAuthenticatedUser200Response> apps/listInstallationReposForAuthenticatedUser(
        int installationId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/installations/{installation_id}/repositories'
            .replaceAll('{installation_id}', "${ installationId }")
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
            return Apps/listInstallationReposForAuthenticatedUser200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/listInstallationReposForAuthenticatedUser');
    }
    Future<void> apps/addRepoToInstallationForAuthenticatedUser(
        int installationId,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/user/installations/{installation_id}/repositories/{repository_id}'
            .replaceAll('{installation_id}', "${ installationId }")
                        .replaceAll('{repository_id}', "${ repositoryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/addRepoToInstallationForAuthenticatedUser');
    }
    Future<void> apps/removeRepoFromInstallationForAuthenticatedUser(
        int installationId,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/installations/{installation_id}/repositories/{repository_id}'
            .replaceAll('{installation_id}', "${ installationId }")
                        .replaceAll('{repository_id}', "${ repositoryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/removeRepoFromInstallationForAuthenticatedUser');
    }
    Future<List<User-marketplace-purchase>> apps/listSubscriptionsForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/marketplace_purchases'
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
            return (jsonDecode(response.body) as List).map<User-marketplace-purchase>((e) => User-marketplace-purchase.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/listSubscriptionsForAuthenticatedUser');
    }
    Future<List<User-marketplace-purchase>> apps/listSubscriptionsForAuthenticatedUserStubbed(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/marketplace_purchases/stubbed'
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
            return (jsonDecode(response.body) as List).map<User-marketplace-purchase>((e) => User-marketplace-purchase.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/listSubscriptionsForAuthenticatedUserStubbed');
    }
    Future<Installation> apps/getUserInstallation(
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/installation'
            .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Installation.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apps/getUserInstallation');
    }
}
