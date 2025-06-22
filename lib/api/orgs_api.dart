import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/organization-simple.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/organization-full.dart';
import 'package:github/model/organization-full_plan.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/organization-full.dart';
import 'package:github/model/organization-full_plan.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/orgs/update_request.dart';
import 'package:github/model/orgs/update_request_default_repository_permission.dart';
import 'package:github/model/orgs/update_request_members_allowed_repository_creation_type.dart';
import 'package:github/model/organization-full.dart';
import 'package:github/model/organization-full_plan.dart';
import 'package:github/model/orgs/update422_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/organization-full.dart';
import 'package:github/model/organization-full_plan.dart';
import 'package:github/model/orgs/list_attestations_bulk_request.dart';
import 'package:github/model/orgs/list_attestations_bulk200_response.dart';
import 'package:github/model/orgs/list_attestations_bulk200_response_page_info.dart';
import 'package:github/model/orgs/list_attestations_bulk200_response.dart';
import 'package:github/model/orgs/list_attestations_bulk200_response_page_info.dart';
import 'package:github/model/orgs/list_attestations200_response.dart';
import 'package:github/model/orgs/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/orgs/list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github/model/orgs/list_attestations200_response.dart';
import 'package:github/model/orgs/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/orgs/list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/organization-invitation.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/organization-invitation.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/org-hook.dart';
import 'package:github/model/org-hook_config.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/org-hook.dart';
import 'package:github/model/org-hook_config.dart';
import 'package:github/model/orgs/create_webhook_request.dart';
import 'package:github/model/orgs/create_webhook_request_config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/org-hook.dart';
import 'package:github/model/org-hook_config.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/org-hook.dart';
import 'package:github/model/org-hook_config.dart';
import 'package:github/model/org-hook.dart';
import 'package:github/model/org-hook_config.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/org-hook.dart';
import 'package:github/model/org-hook_config.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/orgs/update_webhook_request.dart';
import 'package:github/model/orgs/update_webhook_request_config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/org-hook.dart';
import 'package:github/model/org-hook_config.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/org-hook.dart';
import 'package:github/model/org-hook_config.dart';
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
import 'package:github/model/orgs/update_webhook_config_for_org_request.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/api-insights-route-stats_inner.dart';
import 'package:github/model/api-insights-actor-type.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/api-insights-route-stats-sort_inner.dart';
import 'package:github/model/api-insights-route-stats_inner.dart';
import 'package:github/model/api-insights-subject-stats_inner.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/api-insights-sort_inner.dart';
import 'package:github/model/api-insights-subject-stats_inner.dart';
import 'package:github/model/api-insights-summary-stats.dart';
import 'package:github/model/api-insights-summary-stats.dart';
import 'package:github/model/api-insights-summary-stats.dart';
import 'package:github/model/api-insights-summary-stats.dart';
import 'package:github/model/api-insights-summary-stats.dart';
import 'package:github/model/api-insights-actor-type.dart';
import 'package:github/model/api-insights-summary-stats.dart';
import 'package:github/model/api-insights-time-stats_inner.dart';
import 'package:github/model/api-insights-time-stats_inner.dart';
import 'package:github/model/api-insights-time-stats_inner.dart';
import 'package:github/model/api-insights-time-stats_inner.dart';
import 'package:github/model/api-insights-time-stats_inner.dart';
import 'package:github/model/api-insights-actor-type.dart';
import 'package:github/model/api-insights-time-stats_inner.dart';
import 'package:github/model/api-insights-user-stats_inner.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/api-insights-sort_inner.dart';
import 'package:github/model/api-insights-user-stats_inner.dart';
import 'package:github/model/orgs/list_app_installations200_response.dart';
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
import 'package:github/model/orgs/list_app_installations200_response.dart';
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
import 'package:github/model/organization-invitation.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/orgs/list_pending_invitations_parameter3.dart';
import 'package:github/model/orgs/list_pending_invitations_parameter4.dart';
import 'package:github/model/organization-invitation.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/orgs/create_invitation_request.dart';
import 'package:github/model/orgs/create_invitation_request_role.dart';
import 'package:github/model/organization-invitation.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/organization-invitation.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/organization-create-issue-type.dart';
import 'package:github/model/organization-create-issue-type_color.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/organization-update-issue-type.dart';
import 'package:github/model/organization-update-issue-type_color.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/orgs/list_members_parameter1.dart';
import 'package:github/model/orgs/list_members_parameter2.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/org-membership.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/org-membership_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/org-membership.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/org-membership_permissions.dart';
import 'package:github/model/orgs/set_membership_for_user_request.dart';
import 'package:github/model/orgs/set_membership_for_user_request_role.dart';
import 'package:github/model/org-membership.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/org-membership_permissions.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/org-membership.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/org-membership_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/orgs/list_org_roles200_response.dart';
import 'package:github/model/organization-role.dart';
import 'package:github/model/organization-role_base_role.dart';
import 'package:github/model/organization-role_source.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/orgs/list_org_roles200_response.dart';
import 'package:github/model/organization-role.dart';
import 'package:github/model/organization-role_base_role.dart';
import 'package:github/model/organization-role_source.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/organization-role.dart';
import 'package:github/model/organization-role_base_role.dart';
import 'package:github/model/organization-role_source.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/organization-role.dart';
import 'package:github/model/organization-role_base_role.dart';
import 'package:github/model/organization-role_source.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/team-role-assignment.dart';
import 'package:github/model/team-role-assignment_assignment.dart';
import 'package:github/model/team-role-assignment_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-role-assignment.dart';
import 'package:github/model/team-role-assignment_assignment.dart';
import 'package:github/model/team-role-assignment_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/user-role-assignment.dart';
import 'package:github/model/user-role-assignment_assignment.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/user-role-assignment.dart';
import 'package:github/model/user-role-assignment_assignment.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/orgs/list_outside_collaborators_parameter1.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/orgs/convert_member_to_outside_collaborator_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/orgs/convert_member_to_outside_collaborator_response.dart';
import 'package:github/model/orgs/remove_outside_collaborator422_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/organization-programmatic-access-grant-request.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/organization-programmatic-access-grant-request_repository_selection.dart';
import 'package:github/model/organization-programmatic-access-grant-request_permissions.dart';
import 'package:github/model/personal-access-token-sort.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/organization-programmatic-access-grant-request.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/organization-programmatic-access-grant-request_repository_selection.dart';
import 'package:github/model/organization-programmatic-access-grant-request_permissions.dart';
import 'package:github/model/orgs/review_pat_grant_requests_in_bulk_request.dart';
import 'package:github/model/orgs/review_pat_grant_requests_in_bulk_request_action.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/orgs/review_pat_grant_request_request.dart';
import 'package:github/model/orgs/review_pat_grant_request_request_action.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/organization-programmatic-access-grant.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/organization-programmatic-access-grant_repository_selection.dart';
import 'package:github/model/organization-programmatic-access-grant_permissions.dart';
import 'package:github/model/personal-access-token-sort.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/organization-programmatic-access-grant.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/organization-programmatic-access-grant_repository_selection.dart';
import 'package:github/model/organization-programmatic-access-grant_permissions.dart';
import 'package:github/model/orgs/update_pat_accesses_request.dart';
import 'package:github/model/orgs/update_pat_accesses_request_action.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/orgs/update_pat_access_request.dart';
import 'package:github/model/orgs/update_pat_access_request_action.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
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
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
import 'package:github/model/orgs/create_or_update_custom_properties_request.dart';
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
import 'package:github/model/custom-property-set-payload.dart';
import 'package:github/model/custom-property-set-payload_value_type.dart';
import 'package:github/model/custom-property-set-payload_default_value.dart';
import 'package:github/model/custom-property-set-payload_values_editable_by.dart';
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/org-repo-custom-property-values.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/org-repo-custom-property-values.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
import 'package:github/model/orgs/create_or_update_custom_properties_values_for_repos_request.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/ruleset-version.dart';
import 'package:github/model/ruleset-version_actor.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/ruleset-version.dart';
import 'package:github/model/ruleset-version_actor.dart';
import 'package:github/model/ruleset-version-with-state.dart';
import 'package:github/model/ruleset-version_actor.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/ruleset-version-with-state.dart';
import 'package:github/model/ruleset-version_actor.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/orgs/enable_or_disable_security_product_on_all_org_repos_request.dart';
import 'package:github/model/orgs/enable_or_disable_security_product_on_all_org_repos_request_query_suite.dart';
import 'package:github/model/security-product.dart';
import 'package:github/model/org-security-product-enablement.dart';
import 'package:github/model/org-membership.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/org-membership_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/orgs/list_memberships_for_authenticated_user_parameter0.dart';
import 'package:github/model/org-membership.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/org-membership_permissions.dart';
import 'package:github/model/org-membership.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/org-membership_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/org-membership.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/org-membership_permissions.dart';
import 'package:github/model/orgs/update_membership_for_authenticated_user_request.dart';
import 'package:github/model/orgs/update_membership_for_authenticated_user_request_state.dart';
import 'package:github/model/org-membership.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/org-membership_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/org-membership.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/org-membership_permissions.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/organization-simple.dart';
class OrgsApi {
    OrgsApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Organization-simple>> orgs/list(
        { int? since,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/organizations'
,
            queryParameters: {
                'since': ?since.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Organization-simple>((e) => Organization-simple.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/list');
    }
    Future<Organization-full> orgs/get(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Organization-full.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/get');
    }
    Future<dynamic> orgs/delete(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/delete');
    }
    Future<Organization-full> orgs/update(
        String org,
        { Orgs/updateRequest? orgs/updateRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}'
            .replaceAll('{org}', "${ org }")
            ,
            body: orgs/updateRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Organization-full.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/update');
    }
    Future<Orgs/listAttestationsBulk200Response> orgs/listAttestationsBulk(
        String org,
        Orgs/listAttestationsBulkRequest orgs/listAttestationsBulkRequest,
        { int? perPage = 30,String? before,String? after, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/attestations/bulk-list'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
            },
            body: orgs/listAttestationsBulkRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Orgs/listAttestationsBulk200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listAttestationsBulk');
    }
    Future<Orgs/listAttestations200Response> orgs/listAttestations(
        String org,
        String subjectDigest,
        { int? perPage = 30,String? before,String? after,String? predicateType, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/attestations/{subject_digest}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{subject_digest}', "${ subjectDigest }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'predicate_type': ?predicateType.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Orgs/listAttestations200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listAttestations');
    }
    Future<List<Simple-user>> orgs/listBlockedUsers(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/blocks'
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
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listBlockedUsers');
    }
    Future<void> orgs/checkBlockedUser(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/blocks/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/checkBlockedUser');
    }
    Future<void> orgs/blockUser(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/blocks/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/blockUser');
    }
    Future<void> orgs/unblockUser(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/blocks/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/unblockUser');
    }
    Future<List<Organization-invitation>> orgs/listFailedInvitations(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/failed_invitations'
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
            return (jsonDecode(response.body) as List).map<Organization-invitation>((e) => Organization-invitation.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listFailedInvitations');
    }
    Future<List<Org-hook>> orgs/listWebhooks(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/hooks'
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
            return (jsonDecode(response.body) as List).map<Org-hook>((e) => Org-hook.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listWebhooks');
    }
    Future<Org-hook> orgs/createWebhook(
        String org,
        Orgs/createWebhookRequest orgs/createWebhookRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/hooks'
            .replaceAll('{org}', "${ org }")
            ,
            body: orgs/createWebhookRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Org-hook.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/createWebhook');
    }
    Future<Org-hook> orgs/getWebhook(
        String org,
        int hookId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/hooks/{hook_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Org-hook.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/getWebhook');
    }
    Future<void> orgs/deleteWebhook(
        String org,
        int hookId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/hooks/{hook_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/deleteWebhook');
    }
    Future<Org-hook> orgs/updateWebhook(
        String org,
        int hookId,
        { Orgs/updateWebhookRequest? orgs/updateWebhookRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/hooks/{hook_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
            body: orgs/updateWebhookRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Org-hook.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/updateWebhook');
    }
    Future<Webhook-config> orgs/getWebhookConfigForOrg(
        String org,
        int hookId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/hooks/{hook_id}/config'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Webhook-config.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/getWebhookConfigForOrg');
    }
    Future<Webhook-config> orgs/updateWebhookConfigForOrg(
        String org,
        int hookId,
        { Orgs/updateWebhookConfigForOrgRequest? orgs/updateWebhookConfigForOrgRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/hooks/{hook_id}/config'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
            body: orgs/updateWebhookConfigForOrgRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Webhook-config.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/updateWebhookConfigForOrg');
    }
    Future<List<Hook-delivery-item>> orgs/listWebhookDeliveries(
        String org,
        int hookId,
        { int? perPage = 30,String? cursor, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/hooks/{hook_id}/deliveries'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{hook_id}', "${ hookId }")
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

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listWebhookDeliveries');
    }
    Future<Hook-delivery> orgs/getWebhookDelivery(
        String org,
        int hookId,
        int deliveryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/hooks/{hook_id}/deliveries/{delivery_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{hook_id}', "${ hookId }")
                        .replaceAll('{delivery_id}', "${ deliveryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Hook-delivery.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/getWebhookDelivery');
    }
    Future<dynamic> orgs/redeliverWebhookDelivery(
        String org,
        int hookId,
        int deliveryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/hooks/{hook_id}/deliveries/{delivery_id}/attempts'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{hook_id}', "${ hookId }")
                        .replaceAll('{delivery_id}', "${ deliveryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/redeliverWebhookDelivery');
    }
    Future<void> orgs/pingWebhook(
        String org,
        int hookId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/hooks/{hook_id}/pings'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/pingWebhook');
    }
    Future<List<Api-insights-route-statsInner>> apiInsights/getRouteStatsByActor(
        String org,
        Api-insights-actor-type actorType,
        int actorId,
        String minTimestamp,
        { String? maxTimestamp,int? page = 1,int? perPage = 30,Direction? direction = Direction.desc,List<Api-insights-route-stats-sortInner>? sort,String? apiRouteSubstring, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/insights/api/route-stats/{actor_type}/{actor_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{actor_type}', "${ actorType.toJson() }")
                        .replaceAll('{actor_id}', "${ actorId }")
            ,
            queryParameters: {
                'min_timestamp': minTimestamp.toString(),
                'max_timestamp': ?maxTimestamp.toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'direction': ?direction?.toJson().toString(),
                'sort': ?sort?.map((e) => e.toJson()).toList().toString(),
                'api_route_substring': ?apiRouteSubstring.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Api-insights-route-statsInner>((e) => Api-insights-route-statsInner.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apiInsights/getRouteStatsByActor');
    }
    Future<List<Api-insights-subject-statsInner>> apiInsights/getSubjectStats(
        String org,
        String minTimestamp,
        { String? maxTimestamp,int? page = 1,int? perPage = 30,Direction? direction = Direction.desc,List<Api-insights-sortInner>? sort,String? subjectNameSubstring, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/insights/api/subject-stats'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'min_timestamp': minTimestamp.toString(),
                'max_timestamp': ?maxTimestamp.toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'direction': ?direction?.toJson().toString(),
                'sort': ?sort?.map((e) => e.toJson()).toList().toString(),
                'subject_name_substring': ?subjectNameSubstring.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Api-insights-subject-statsInner>((e) => Api-insights-subject-statsInner.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apiInsights/getSubjectStats');
    }
    Future<Api-insights-summary-stats> apiInsights/getSummaryStats(
        String org,
        String minTimestamp,
        { String? maxTimestamp, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/insights/api/summary-stats'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'min_timestamp': minTimestamp.toString(),
                'max_timestamp': ?maxTimestamp.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Api-insights-summary-stats.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apiInsights/getSummaryStats');
    }
    Future<Api-insights-summary-stats> apiInsights/getSummaryStatsByUser(
        String org,
        String userId,
        String minTimestamp,
        { String? maxTimestamp, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/insights/api/summary-stats/users/{user_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{user_id}', "${ userId }")
            ,
            queryParameters: {
                'min_timestamp': minTimestamp.toString(),
                'max_timestamp': ?maxTimestamp.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Api-insights-summary-stats.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apiInsights/getSummaryStatsByUser');
    }
    Future<Api-insights-summary-stats> apiInsights/getSummaryStatsByActor(
        String org,
        String minTimestamp,
        Api-insights-actor-type actorType,
        int actorId,
        { String? maxTimestamp, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/insights/api/summary-stats/{actor_type}/{actor_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{actor_type}', "${ actorType.toJson() }")
                        .replaceAll('{actor_id}', "${ actorId }")
            ,
            queryParameters: {
                'min_timestamp': minTimestamp.toString(),
                'max_timestamp': ?maxTimestamp.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Api-insights-summary-stats.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apiInsights/getSummaryStatsByActor');
    }
    Future<List<Api-insights-time-statsInner>> apiInsights/getTimeStats(
        String org,
        String minTimestamp,
        String timestampIncrement,
        { String? maxTimestamp, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/insights/api/time-stats'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'min_timestamp': minTimestamp.toString(),
                'max_timestamp': ?maxTimestamp.toString(),
                'timestamp_increment': timestampIncrement.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Api-insights-time-statsInner>((e) => Api-insights-time-statsInner.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apiInsights/getTimeStats');
    }
    Future<List<Api-insights-time-statsInner>> apiInsights/getTimeStatsByUser(
        String org,
        String userId,
        String minTimestamp,
        String timestampIncrement,
        { String? maxTimestamp, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/insights/api/time-stats/users/{user_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{user_id}', "${ userId }")
            ,
            queryParameters: {
                'min_timestamp': minTimestamp.toString(),
                'max_timestamp': ?maxTimestamp.toString(),
                'timestamp_increment': timestampIncrement.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Api-insights-time-statsInner>((e) => Api-insights-time-statsInner.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apiInsights/getTimeStatsByUser');
    }
    Future<List<Api-insights-time-statsInner>> apiInsights/getTimeStatsByActor(
        String org,
        Api-insights-actor-type actorType,
        int actorId,
        String minTimestamp,
        String timestampIncrement,
        { String? maxTimestamp, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/insights/api/time-stats/{actor_type}/{actor_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{actor_type}', "${ actorType.toJson() }")
                        .replaceAll('{actor_id}', "${ actorId }")
            ,
            queryParameters: {
                'min_timestamp': minTimestamp.toString(),
                'max_timestamp': ?maxTimestamp.toString(),
                'timestamp_increment': timestampIncrement.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Api-insights-time-statsInner>((e) => Api-insights-time-statsInner.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apiInsights/getTimeStatsByActor');
    }
    Future<List<Api-insights-user-statsInner>> apiInsights/getUserStats(
        String org,
        String userId,
        String minTimestamp,
        { String? maxTimestamp,int? page = 1,int? perPage = 30,Direction? direction = Direction.desc,List<Api-insights-sortInner>? sort,String? actorNameSubstring, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/insights/api/user-stats/{user_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{user_id}', "${ userId }")
            ,
            queryParameters: {
                'min_timestamp': minTimestamp.toString(),
                'max_timestamp': ?maxTimestamp.toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'direction': ?direction?.toJson().toString(),
                'sort': ?sort?.map((e) => e.toJson()).toList().toString(),
                'actor_name_substring': ?actorNameSubstring.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Api-insights-user-statsInner>((e) => Api-insights-user-statsInner.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $apiInsights/getUserStats');
    }
    Future<Orgs/listAppInstallations200Response> orgs/listAppInstallations(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/installations'
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
            return Orgs/listAppInstallations200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listAppInstallations');
    }
    Future<List<Organization-invitation>> orgs/listPendingInvitations(
        String org,
        { int? perPage = 30,int? page = 1,Orgs/listPendingInvitationsParameter3? role = Orgs/listPendingInvitationsParameter3.all,Orgs/listPendingInvitationsParameter4? invitationSource = Orgs/listPendingInvitationsParameter4.all, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/invitations'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'role': ?role?.toJson().toString(),
                'invitation_source': ?invitationSource?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Organization-invitation>((e) => Organization-invitation.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listPendingInvitations');
    }
    Future<Organization-invitation> orgs/createInvitation(
        String org,
        { Orgs/createInvitationRequest? orgs/createInvitationRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/invitations'
            .replaceAll('{org}', "${ org }")
            ,
            body: orgs/createInvitationRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Organization-invitation.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/createInvitation');
    }
    Future<void> orgs/cancelInvitation(
        String org,
        int invitationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/invitations/{invitation_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{invitation_id}', "${ invitationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/cancelInvitation');
    }
    Future<List<Team>> orgs/listInvitationTeams(
        String org,
        int invitationId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/invitations/{invitation_id}/teams'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{invitation_id}', "${ invitationId }")
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
            return (jsonDecode(response.body) as List).map<Team>((e) => Team.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listInvitationTeams');
    }
    Future<List<Issue-type>> orgs/listIssueTypes(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/issue-types'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Issue-type>((e) => Issue-type.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listIssueTypes');
    }
    Future<Issue-type> orgs/createIssueType(
        String org,
        Organization-create-issue-type organization-create-issue-type,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/issue-types'
            .replaceAll('{org}', "${ org }")
            ,
            body: organization-create-issue-type.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Issue-type.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/createIssueType');
    }
    Future<Issue-type> orgs/updateIssueType(
        String org,
        int issueTypeId,
        Organization-update-issue-type organization-update-issue-type,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/issue-types/{issue_type_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{issue_type_id}', "${ issueTypeId }")
            ,
            body: organization-update-issue-type.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Issue-type.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/updateIssueType');
    }
    Future<void> orgs/deleteIssueType(
        String org,
        int issueTypeId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/issue-types/{issue_type_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{issue_type_id}', "${ issueTypeId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/deleteIssueType');
    }
    Future<List<Simple-user>> orgs/listMembers(
        String org,
        { Orgs/listMembersParameter1? filter = Orgs/listMembersParameter1.all,Orgs/listMembersParameter2? role = Orgs/listMembersParameter2.all,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/members'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'filter': ?filter?.toJson().toString(),
                'role': ?role?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listMembers');
    }
    Future<void> orgs/checkMembershipForUser(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/members/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/checkMembershipForUser');
    }
    Future<void> orgs/removeMember(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/members/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/removeMember');
    }
    Future<Org-membership> orgs/getMembershipForUser(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/memberships/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Org-membership.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/getMembershipForUser');
    }
    Future<Org-membership> orgs/setMembershipForUser(
        String org,
        String username,
        { Orgs/setMembershipForUserRequest? orgs/setMembershipForUserRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/memberships/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
            body: orgs/setMembershipForUserRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Org-membership.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/setMembershipForUser');
    }
    Future<void> orgs/removeMembershipForUser(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/memberships/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/removeMembershipForUser');
    }
    Future<Orgs/listOrgRoles200Response> orgs/listOrgRoles(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/organization-roles'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Orgs/listOrgRoles200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listOrgRoles');
    }
    Future<void> orgs/revokeAllOrgRolesTeam(
        String org,
        String teamSlug,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/organization-roles/teams/{team_slug}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/revokeAllOrgRolesTeam');
    }
    Future<void> orgs/assignTeamToOrgRole(
        String org,
        String teamSlug,
        int roleId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/organization-roles/teams/{team_slug}/{role_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{role_id}', "${ roleId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/assignTeamToOrgRole');
    }
    Future<void> orgs/revokeOrgRoleTeam(
        String org,
        String teamSlug,
        int roleId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/organization-roles/teams/{team_slug}/{role_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{role_id}', "${ roleId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/revokeOrgRoleTeam');
    }
    Future<void> orgs/revokeAllOrgRolesUser(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/organization-roles/users/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/revokeAllOrgRolesUser');
    }
    Future<void> orgs/assignUserToOrgRole(
        String org,
        String username,
        int roleId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/organization-roles/users/{username}/{role_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
                        .replaceAll('{role_id}', "${ roleId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/assignUserToOrgRole');
    }
    Future<void> orgs/revokeOrgRoleUser(
        String org,
        String username,
        int roleId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/organization-roles/users/{username}/{role_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
                        .replaceAll('{role_id}', "${ roleId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/revokeOrgRoleUser');
    }
    Future<Organization-role> orgs/getOrgRole(
        String org,
        int roleId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/organization-roles/{role_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{role_id}', "${ roleId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Organization-role.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/getOrgRole');
    }
    Future<List<Team-role-assignment>> orgs/listOrgRoleTeams(
        String org,
        int roleId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/organization-roles/{role_id}/teams'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{role_id}', "${ roleId }")
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
            return (jsonDecode(response.body) as List).map<Team-role-assignment>((e) => Team-role-assignment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listOrgRoleTeams');
    }
    Future<List<User-role-assignment>> orgs/listOrgRoleUsers(
        String org,
        int roleId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/organization-roles/{role_id}/users'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{role_id}', "${ roleId }")
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
            return (jsonDecode(response.body) as List).map<User-role-assignment>((e) => User-role-assignment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listOrgRoleUsers');
    }
    Future<List<Simple-user>> orgs/listOutsideCollaborators(
        String org,
        { Orgs/listOutsideCollaboratorsParameter1? filter = Orgs/listOutsideCollaboratorsParameter1.all,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/outside_collaborators'
            .replaceAll('{org}', "${ org }")
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
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listOutsideCollaborators');
    }
    Future<Orgs/convertMemberToOutsideCollaboratorResponse> orgs/convertMemberToOutsideCollaborator(
        String org,
        String username,
        { Orgs/convertMemberToOutsideCollaboratorRequest? orgs/convertMemberToOutsideCollaboratorRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/outside_collaborators/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
            body: orgs/convertMemberToOutsideCollaboratorRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Orgs/convertMemberToOutsideCollaboratorResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/convertMemberToOutsideCollaborator');
    }
    Future<void> orgs/removeOutsideCollaborator(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/outside_collaborators/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/removeOutsideCollaborator');
    }
    Future<List<Organization-programmatic-access-grant-request>> orgs/listPatGrantRequests(
        String org,
        { int? perPage = 30,int? page = 1,Personal-access-token-sort? sort = Personal-access-token-sort.createdAt,Direction? direction = Direction.desc,List<String>? owner,String? repository,String? permission,DateTime? lastUsedBefore,DateTime? lastUsedAfter,List<String>? tokenId, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/personal-access-token-requests'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'owner': ?owner.toString(),
                'repository': ?repository.toString(),
                'permission': ?permission.toString(),
                'last_used_before': ?lastUsedBefore?.toIso8601String().toString(),
                'last_used_after': ?lastUsedAfter?.toIso8601String().toString(),
                'token_id': ?tokenId.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Organization-programmatic-access-grant-request>((e) => Organization-programmatic-access-grant-request.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listPatGrantRequests');
    }
    Future<dynamic> orgs/reviewPatGrantRequestsInBulk(
        String org,
        Orgs/reviewPatGrantRequestsInBulkRequest orgs/reviewPatGrantRequestsInBulkRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/personal-access-token-requests'
            .replaceAll('{org}', "${ org }")
            ,
            body: orgs/reviewPatGrantRequestsInBulkRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/reviewPatGrantRequestsInBulk');
    }
    Future<void> orgs/reviewPatGrantRequest(
        String org,
        int patRequestId,
        Orgs/reviewPatGrantRequestRequest orgs/reviewPatGrantRequestRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/personal-access-token-requests/{pat_request_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{pat_request_id}', "${ patRequestId }")
            ,
            body: orgs/reviewPatGrantRequestRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/reviewPatGrantRequest');
    }
    Future<List<Minimal-repository>> orgs/listPatGrantRequestRepositories(
        String org,
        int patRequestId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/personal-access-token-requests/{pat_request_id}/repositories'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{pat_request_id}', "${ patRequestId }")
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
            return (jsonDecode(response.body) as List).map<Minimal-repository>((e) => Minimal-repository.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listPatGrantRequestRepositories');
    }
    Future<List<Organization-programmatic-access-grant>> orgs/listPatGrants(
        String org,
        { int? perPage = 30,int? page = 1,Personal-access-token-sort? sort = Personal-access-token-sort.createdAt,Direction? direction = Direction.desc,List<String>? owner,String? repository,String? permission,DateTime? lastUsedBefore,DateTime? lastUsedAfter,List<String>? tokenId, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/personal-access-tokens'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'owner': ?owner.toString(),
                'repository': ?repository.toString(),
                'permission': ?permission.toString(),
                'last_used_before': ?lastUsedBefore?.toIso8601String().toString(),
                'last_used_after': ?lastUsedAfter?.toIso8601String().toString(),
                'token_id': ?tokenId.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Organization-programmatic-access-grant>((e) => Organization-programmatic-access-grant.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listPatGrants');
    }
    Future<dynamic> orgs/updatePatAccesses(
        String org,
        Orgs/updatePatAccessesRequest orgs/updatePatAccessesRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/personal-access-tokens'
            .replaceAll('{org}', "${ org }")
            ,
            body: orgs/updatePatAccessesRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/updatePatAccesses');
    }
    Future<void> orgs/updatePatAccess(
        String org,
        int patId,
        Orgs/updatePatAccessRequest orgs/updatePatAccessRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/personal-access-tokens/{pat_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{pat_id}', "${ patId }")
            ,
            body: orgs/updatePatAccessRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/updatePatAccess');
    }
    Future<List<Minimal-repository>> orgs/listPatGrantRepositories(
        String org,
        int patId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/personal-access-tokens/{pat_id}/repositories'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{pat_id}', "${ patId }")
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
            return (jsonDecode(response.body) as List).map<Minimal-repository>((e) => Minimal-repository.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listPatGrantRepositories');
    }
    Future<List<Custom-property>> orgs/getAllCustomProperties(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/properties/schema'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Custom-property>((e) => Custom-property.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/getAllCustomProperties');
    }
    Future<List<Custom-property>> orgs/createOrUpdateCustomProperties(
        String org,
        Orgs/createOrUpdateCustomPropertiesRequest orgs/createOrUpdateCustomPropertiesRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/properties/schema'
            .replaceAll('{org}', "${ org }")
            ,
            body: orgs/createOrUpdateCustomPropertiesRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Custom-property>((e) => Custom-property.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/createOrUpdateCustomProperties');
    }
    Future<Custom-property> orgs/getCustomProperty(
        String org,
        String customPropertyName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/properties/schema/{custom_property_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{custom_property_name}', "${ customPropertyName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Custom-property.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/getCustomProperty');
    }
    Future<Custom-property> orgs/createOrUpdateCustomProperty(
        String org,
        String customPropertyName,
        Custom-property-set-payload custom-property-set-payload,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/properties/schema/{custom_property_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{custom_property_name}', "${ customPropertyName }")
            ,
            body: custom-property-set-payload.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Custom-property.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/createOrUpdateCustomProperty');
    }
    Future<void> orgs/removeCustomProperty(
        String org,
        String customPropertyName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/properties/schema/{custom_property_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{custom_property_name}', "${ customPropertyName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/removeCustomProperty');
    }
    Future<List<Org-repo-custom-property-values>> orgs/listCustomPropertiesValuesForRepos(
        String org,
        { int? perPage = 30,int? page = 1,String? repositoryQuery, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/properties/values'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'repository_query': ?repositoryQuery.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Org-repo-custom-property-values>((e) => Org-repo-custom-property-values.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listCustomPropertiesValuesForRepos');
    }
    Future<void> orgs/createOrUpdateCustomPropertiesValuesForRepos(
        String org,
        Orgs/createOrUpdateCustomPropertiesValuesForReposRequest orgs/createOrUpdateCustomPropertiesValuesForReposRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/properties/values'
            .replaceAll('{org}', "${ org }")
            ,
            body: orgs/createOrUpdateCustomPropertiesValuesForReposRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/createOrUpdateCustomPropertiesValuesForRepos');
    }
    Future<List<Simple-user>> orgs/listPublicMembers(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/public_members'
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
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listPublicMembers');
    }
    Future<void> orgs/checkPublicMembershipForUser(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/public_members/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/checkPublicMembershipForUser');
    }
    Future<void> orgs/setPublicMembershipForAuthenticatedUser(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/public_members/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/setPublicMembershipForAuthenticatedUser');
    }
    Future<void> orgs/removePublicMembershipForAuthenticatedUser(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/public_members/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/removePublicMembershipForAuthenticatedUser');
    }
    Future<List<Ruleset-version>> orgs/getOrgRulesetHistory(
        String org,
        int rulesetId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/rulesets/{ruleset_id}/history'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{ruleset_id}', "${ rulesetId }")
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
            return (jsonDecode(response.body) as List).map<Ruleset-version>((e) => Ruleset-version.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/getOrgRulesetHistory');
    }
    Future<Ruleset-version-with-state> orgs/getOrgRulesetVersion(
        String org,
        int rulesetId,
        int versionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/rulesets/{ruleset_id}/history/{version_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{ruleset_id}', "${ rulesetId }")
                        .replaceAll('{version_id}', "${ versionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Ruleset-version-with-state.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/getOrgRulesetVersion');
    }
    Future<List<Team-simple>> orgs/listSecurityManagerTeams(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/security-managers'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Team-simple>((e) => Team-simple.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listSecurityManagerTeams');
    }
    Future<void> orgs/addSecurityManagerTeam(
        String org,
        String teamSlug,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/security-managers/teams/{team_slug}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/addSecurityManagerTeam');
    }
    Future<void> orgs/removeSecurityManagerTeam(
        String org,
        String teamSlug,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/security-managers/teams/{team_slug}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/removeSecurityManagerTeam');
    }
    Future<void> orgs/enableOrDisableSecurityProductOnAllOrgRepos(
        String org,
        Security-product securityProduct,
        Org-security-product-enablement enablement,
        { Orgs/enableOrDisableSecurityProductOnAllOrgReposRequest? orgs/enableOrDisableSecurityProductOnAllOrgReposRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/{security_product}/{enablement}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{security_product}', "${ securityProduct.toJson() }")
                        .replaceAll('{enablement}', "${ enablement.toJson() }")
            ,
            body: orgs/enableOrDisableSecurityProductOnAllOrgReposRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/enableOrDisableSecurityProductOnAllOrgRepos');
    }
    Future<List<Org-membership>> orgs/listMembershipsForAuthenticatedUser(
        { Orgs/listMembershipsForAuthenticatedUserParameter0? state,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/memberships/orgs'
,
            queryParameters: {
                'state': ?state?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Org-membership>((e) => Org-membership.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listMembershipsForAuthenticatedUser');
    }
    Future<Org-membership> orgs/getMembershipForAuthenticatedUser(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/memberships/orgs/{org}'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Org-membership.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/getMembershipForAuthenticatedUser');
    }
    Future<Org-membership> orgs/updateMembershipForAuthenticatedUser(
        String org,
        Orgs/updateMembershipForAuthenticatedUserRequest orgs/updateMembershipForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/user/memberships/orgs/{org}'
            .replaceAll('{org}', "${ org }")
            ,
            body: orgs/updateMembershipForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Org-membership.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/updateMembershipForAuthenticatedUser');
    }
    Future<List<Organization-simple>> orgs/listForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/orgs'
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
            return (jsonDecode(response.body) as List).map<Organization-simple>((e) => Organization-simple.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listForAuthenticatedUser');
    }
    Future<List<Organization-simple>> orgs/listForUser(
        String username,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/orgs'
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
            return (jsonDecode(response.body) as List).map<Organization-simple>((e) => Organization-simple.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $orgs/listForUser');
    }
}
