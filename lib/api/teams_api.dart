import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/teams/create_request.dart';
import 'package:github/model/teams/create_request_privacy.dart';
import 'package:github/model/teams/create_request_notification_setting.dart';
import 'package:github/model/teams/create_request_permission.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/teams/update_in_org_request.dart';
import 'package:github/model/teams/update_in_org_request_privacy.dart';
import 'package:github/model/teams/update_in_org_request_notification_setting.dart';
import 'package:github/model/teams/update_in_org_request_permission.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/teams/create_discussion_in_org_request.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/teams/update_discussion_in_org_request.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/teams/create_discussion_comment_in_org_request.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/teams/update_discussion_comment_in_org_request.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/organization-invitation.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/organization-invitation.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/teams/list_members_in_org_parameter2.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-membership.dart';
import 'package:github/model/team-membership_role.dart';
import 'package:github/model/team-membership_state.dart';
import 'package:github/model/team-membership.dart';
import 'package:github/model/team-membership_role.dart';
import 'package:github/model/team-membership_state.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_in_org_request.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_in_org_request_role.dart';
import 'package:github/model/team-membership.dart';
import 'package:github/model/team-membership_role.dart';
import 'package:github/model/team-membership_state.dart';
import 'package:github/model/team-membership.dart';
import 'package:github/model/team-membership_role.dart';
import 'package:github/model/team-membership_state.dart';
import 'package:github/model/team-project.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-project_permissions.dart';
import 'package:github/model/team-project.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-project_permissions.dart';
import 'package:github/model/team-project.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-project_permissions.dart';
import 'package:github/model/team-project.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-project_permissions.dart';
import 'package:github/model/teams/add_or_update_project_permissions_in_org_request.dart';
import 'package:github/model/teams/add_or_update_project_permissions_in_org_request_permission.dart';
import 'package:github/model/teams/add_or_update_project_permissions_in_org403_response.dart';
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
import 'package:github/model/team-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/team-repository_permissions.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/teams/check_permissions_for_repo_in_org_response.dart';
import 'package:github/model/team-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/team-repository_permissions.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/teams/add_or_update_repo_permissions_in_org_request.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/teams/update_legacy_request.dart';
import 'package:github/model/teams/update_legacy_request_privacy.dart';
import 'package:github/model/teams/update_legacy_request_notification_setting.dart';
import 'package:github/model/teams/update_legacy_request_permission.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/teams/create_discussion_legacy_request.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/teams/update_discussion_legacy_request.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/teams/create_discussion_comment_legacy_request.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/teams/update_discussion_comment_legacy_request.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/organization-invitation.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/organization-invitation.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/teams/list_members_legacy_parameter1.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team-membership.dart';
import 'package:github/model/team-membership_role.dart';
import 'package:github/model/team-membership_state.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team-membership.dart';
import 'package:github/model/team-membership_role.dart';
import 'package:github/model/team-membership_state.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_legacy_request.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_legacy_request_role.dart';
import 'package:github/model/team-membership.dart';
import 'package:github/model/team-membership_role.dart';
import 'package:github/model/team-membership_state.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team-membership.dart';
import 'package:github/model/team-membership_role.dart';
import 'package:github/model/team-membership_state.dart';
import 'package:github/model/team-project.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-project_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team-project.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-project_permissions.dart';
import 'package:github/model/team-project.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-project_permissions.dart';
import 'package:github/model/team-project.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-project_permissions.dart';
import 'package:github/model/teams/add_or_update_project_permissions_legacy_request.dart';
import 'package:github/model/teams/add_or_update_project_permissions_legacy_request_permission.dart';
import 'package:github/model/teams/add_or_update_project_permissions_legacy403_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
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
import 'package:github/model/team-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/team-repository_permissions.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/teams/check_permissions_for_repo_legacy_response.dart';
import 'package:github/model/team-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/team-repository_permissions.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/teams/add_or_update_repo_permissions_legacy_request.dart';
import 'package:github/model/teams/add_or_update_repo_permissions_legacy_request_permission.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
class TeamsApi {
    TeamsApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Team>> teams/list(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams'
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
            return (jsonDecode(response.body) as List).map<Team>((e) => Team.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/list');
    }
    Future<Team-full> teams/create(
        String org,
        Teams/createRequest teams/createRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/teams'
            .replaceAll('{org}', "${ org }")
            ,
            body: teams/createRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-full.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/create');
    }
    Future<Team-full> teams/getByName(
        String org,
        String teamSlug,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-full.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/getByName');
    }
    Future<void> teams/deleteInOrg(
        String org,
        String teamSlug,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/teams/{team_slug}'
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

        throw ApiException(response.statusCode, 'Unhandled response from $teams/deleteInOrg');
    }
    Future<Team-full> teams/updateInOrg(
        String org,
        String teamSlug,
        { Teams/updateInOrgRequest? teams/updateInOrgRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/teams/{team_slug}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
            ,
            body: teams/updateInOrgRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-full.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/updateInOrg');
    }
    Future<List<Team-discussion>> teams/listDiscussionsInOrg(
        String org,
        String teamSlug,
        { Direction? direction = Direction.desc,int? perPage = 30,int? page = 1,String? pinned, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/discussions'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
            ,
            queryParameters: {
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'pinned': ?pinned.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Team-discussion>((e) => Team-discussion.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listDiscussionsInOrg');
    }
    Future<Team-discussion> teams/createDiscussionInOrg(
        String org,
        String teamSlug,
        Teams/createDiscussionInOrgRequest teams/createDiscussionInOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/teams/{team_slug}/discussions'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
            ,
            body: teams/createDiscussionInOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-discussion.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/createDiscussionInOrg');
    }
    Future<Team-discussion> teams/getDiscussionInOrg(
        String org,
        String teamSlug,
        int discussionNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-discussion.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/getDiscussionInOrg');
    }
    Future<void> teams/deleteDiscussionInOrg(
        String org,
        String teamSlug,
        int discussionNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/deleteDiscussionInOrg');
    }
    Future<Team-discussion> teams/updateDiscussionInOrg(
        String org,
        String teamSlug,
        int discussionNumber,
        { Teams/updateDiscussionInOrgRequest? teams/updateDiscussionInOrgRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
            body: teams/updateDiscussionInOrgRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-discussion.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/updateDiscussionInOrg');
    }
    Future<List<Team-discussion-comment>> teams/listDiscussionCommentsInOrg(
        String org,
        String teamSlug,
        int discussionNumber,
        { Direction? direction = Direction.desc,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
            queryParameters: {
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Team-discussion-comment>((e) => Team-discussion-comment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listDiscussionCommentsInOrg');
    }
    Future<Team-discussion-comment> teams/createDiscussionCommentInOrg(
        String org,
        String teamSlug,
        int discussionNumber,
        Teams/createDiscussionCommentInOrgRequest teams/createDiscussionCommentInOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
            body: teams/createDiscussionCommentInOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-discussion-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/createDiscussionCommentInOrg');
    }
    Future<Team-discussion-comment> teams/getDiscussionCommentInOrg(
        String org,
        String teamSlug,
        int discussionNumber,
        int commentNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
                        .replaceAll('{comment_number}', "${ commentNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-discussion-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/getDiscussionCommentInOrg');
    }
    Future<void> teams/deleteDiscussionCommentInOrg(
        String org,
        String teamSlug,
        int discussionNumber,
        int commentNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
                        .replaceAll('{comment_number}', "${ commentNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/deleteDiscussionCommentInOrg');
    }
    Future<Team-discussion-comment> teams/updateDiscussionCommentInOrg(
        String org,
        String teamSlug,
        int discussionNumber,
        int commentNumber,
        Teams/updateDiscussionCommentInOrgRequest teams/updateDiscussionCommentInOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
                        .replaceAll('{comment_number}', "${ commentNumber }")
            ,
            body: teams/updateDiscussionCommentInOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-discussion-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/updateDiscussionCommentInOrg');
    }
    Future<List<Organization-invitation>> teams/listPendingInvitationsInOrg(
        String org,
        String teamSlug,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/invitations'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
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

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listPendingInvitationsInOrg');
    }
    Future<List<Simple-user>> teams/listMembersInOrg(
        String org,
        String teamSlug,
        { Teams/listMembersInOrgParameter2? role = Teams/listMembersInOrgParameter2.all,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/members'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
            ,
            queryParameters: {
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

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listMembersInOrg');
    }
    Future<Team-membership> teams/getMembershipForUserInOrg(
        String org,
        String teamSlug,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/memberships/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-membership.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/getMembershipForUserInOrg');
    }
    Future<Team-membership> teams/addOrUpdateMembershipForUserInOrg(
        String org,
        String teamSlug,
        String username,
        { Teams/addOrUpdateMembershipForUserInOrgRequest? teams/addOrUpdateMembershipForUserInOrgRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/teams/{team_slug}/memberships/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{username}', "${ username }")
            ,
            body: teams/addOrUpdateMembershipForUserInOrgRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-membership.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/addOrUpdateMembershipForUserInOrg');
    }
    Future<void> teams/removeMembershipForUserInOrg(
        String org,
        String teamSlug,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/teams/{team_slug}/memberships/{username}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/removeMembershipForUserInOrg');
    }
    Future<List<Team-project>> teams/listProjectsInOrg(
        String org,
        String teamSlug,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/projects'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
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
            return (jsonDecode(response.body) as List).map<Team-project>((e) => Team-project.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listProjectsInOrg');
    }
    Future<Team-project> teams/checkPermissionsForProjectInOrg(
        String org,
        String teamSlug,
        int projectId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/projects/{project_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{project_id}', "${ projectId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-project.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/checkPermissionsForProjectInOrg');
    }
    Future<void> teams/addOrUpdateProjectPermissionsInOrg(
        String org,
        String teamSlug,
        int projectId,
        { Teams/addOrUpdateProjectPermissionsInOrgRequest? teams/addOrUpdateProjectPermissionsInOrgRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/teams/{team_slug}/projects/{project_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{project_id}', "${ projectId }")
            ,
            body: teams/addOrUpdateProjectPermissionsInOrgRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/addOrUpdateProjectPermissionsInOrg');
    }
    Future<void> teams/removeProjectInOrg(
        String org,
        String teamSlug,
        int projectId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/teams/{team_slug}/projects/{project_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{project_id}', "${ projectId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/removeProjectInOrg');
    }
    Future<List<Minimal-repository>> teams/listReposInOrg(
        String org,
        String teamSlug,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/repos'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
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

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listReposInOrg');
    }
    Future<Teams/checkPermissionsForRepoInOrgResponse> teams/checkPermissionsForRepoInOrg(
        String org,
        String teamSlug,
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Teams/checkPermissionsForRepoInOrgResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/checkPermissionsForRepoInOrg');
    }
    Future<void> teams/addOrUpdateRepoPermissionsInOrg(
        String org,
        String teamSlug,
        String owner,
        String repo,
        { Teams/addOrUpdateRepoPermissionsInOrgRequest? teams/addOrUpdateRepoPermissionsInOrgRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: teams/addOrUpdateRepoPermissionsInOrgRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/addOrUpdateRepoPermissionsInOrg');
    }
    Future<void> teams/removeRepoInOrg(
        String org,
        String teamSlug,
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/removeRepoInOrg');
    }
    Future<List<Team>> teams/listChildInOrg(
        String org,
        String teamSlug,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/teams'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
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

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listChildInOrg');
    }
    Future<Team-full> teams/getLegacy(
        int teamId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}'
            .replaceAll('{team_id}', "${ teamId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-full.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/getLegacy');
    }
    Future<void> teams/deleteLegacy(
        int teamId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/teams/{team_id}'
            .replaceAll('{team_id}', "${ teamId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/deleteLegacy');
    }
    Future<Team-full> teams/updateLegacy(
        int teamId,
        Teams/updateLegacyRequest teams/updateLegacyRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/teams/{team_id}'
            .replaceAll('{team_id}', "${ teamId }")
            ,
            body: teams/updateLegacyRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-full.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/updateLegacy');
    }
    Future<List<Team-discussion>> teams/listDiscussionsLegacy(
        int teamId,
        { Direction? direction = Direction.desc,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/discussions'
            .replaceAll('{team_id}', "${ teamId }")
            ,
            queryParameters: {
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Team-discussion>((e) => Team-discussion.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listDiscussionsLegacy');
    }
    Future<Team-discussion> teams/createDiscussionLegacy(
        int teamId,
        Teams/createDiscussionLegacyRequest teams/createDiscussionLegacyRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/teams/{team_id}/discussions'
            .replaceAll('{team_id}', "${ teamId }")
            ,
            body: teams/createDiscussionLegacyRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-discussion.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/createDiscussionLegacy');
    }
    Future<Team-discussion> teams/getDiscussionLegacy(
        int teamId,
        int discussionNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/discussions/{discussion_number}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-discussion.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/getDiscussionLegacy');
    }
    Future<void> teams/deleteDiscussionLegacy(
        int teamId,
        int discussionNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/teams/{team_id}/discussions/{discussion_number}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/deleteDiscussionLegacy');
    }
    Future<Team-discussion> teams/updateDiscussionLegacy(
        int teamId,
        int discussionNumber,
        { Teams/updateDiscussionLegacyRequest? teams/updateDiscussionLegacyRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/teams/{team_id}/discussions/{discussion_number}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
            body: teams/updateDiscussionLegacyRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-discussion.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/updateDiscussionLegacy');
    }
    Future<List<Team-discussion-comment>> teams/listDiscussionCommentsLegacy(
        int teamId,
        int discussionNumber,
        { Direction? direction = Direction.desc,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/discussions/{discussion_number}/comments'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
            queryParameters: {
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Team-discussion-comment>((e) => Team-discussion-comment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listDiscussionCommentsLegacy');
    }
    Future<Team-discussion-comment> teams/createDiscussionCommentLegacy(
        int teamId,
        int discussionNumber,
        Teams/createDiscussionCommentLegacyRequest teams/createDiscussionCommentLegacyRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/teams/{team_id}/discussions/{discussion_number}/comments'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
            body: teams/createDiscussionCommentLegacyRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-discussion-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/createDiscussionCommentLegacy');
    }
    Future<Team-discussion-comment> teams/getDiscussionCommentLegacy(
        int teamId,
        int discussionNumber,
        int commentNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
                        .replaceAll('{comment_number}', "${ commentNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-discussion-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/getDiscussionCommentLegacy');
    }
    Future<void> teams/deleteDiscussionCommentLegacy(
        int teamId,
        int discussionNumber,
        int commentNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
                        .replaceAll('{comment_number}', "${ commentNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/deleteDiscussionCommentLegacy');
    }
    Future<Team-discussion-comment> teams/updateDiscussionCommentLegacy(
        int teamId,
        int discussionNumber,
        int commentNumber,
        Teams/updateDiscussionCommentLegacyRequest teams/updateDiscussionCommentLegacyRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
                        .replaceAll('{comment_number}', "${ commentNumber }")
            ,
            body: teams/updateDiscussionCommentLegacyRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-discussion-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/updateDiscussionCommentLegacy');
    }
    Future<List<Organization-invitation>> teams/listPendingInvitationsLegacy(
        int teamId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/invitations'
            .replaceAll('{team_id}', "${ teamId }")
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

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listPendingInvitationsLegacy');
    }
    Future<List<Simple-user>> teams/listMembersLegacy(
        int teamId,
        { Teams/listMembersLegacyParameter1? role = Teams/listMembersLegacyParameter1.all,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/members'
            .replaceAll('{team_id}', "${ teamId }")
            ,
            queryParameters: {
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

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listMembersLegacy');
    }
    Future<void> teams/getMemberLegacy(
        int teamId,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/members/{username}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/getMemberLegacy');
    }
    Future<void> teams/addMemberLegacy(
        int teamId,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/teams/{team_id}/members/{username}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/addMemberLegacy');
    }
    Future<void> teams/removeMemberLegacy(
        int teamId,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/teams/{team_id}/members/{username}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/removeMemberLegacy');
    }
    Future<Team-membership> teams/getMembershipForUserLegacy(
        int teamId,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/memberships/{username}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-membership.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/getMembershipForUserLegacy');
    }
    Future<Team-membership> teams/addOrUpdateMembershipForUserLegacy(
        int teamId,
        String username,
        { Teams/addOrUpdateMembershipForUserLegacyRequest? teams/addOrUpdateMembershipForUserLegacyRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/teams/{team_id}/memberships/{username}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{username}', "${ username }")
            ,
            body: teams/addOrUpdateMembershipForUserLegacyRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-membership.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/addOrUpdateMembershipForUserLegacy');
    }
    Future<void> teams/removeMembershipForUserLegacy(
        int teamId,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/teams/{team_id}/memberships/{username}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/removeMembershipForUserLegacy');
    }
    Future<List<Team-project>> teams/listProjectsLegacy(
        int teamId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/projects'
            .replaceAll('{team_id}', "${ teamId }")
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
            return (jsonDecode(response.body) as List).map<Team-project>((e) => Team-project.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listProjectsLegacy');
    }
    Future<Team-project> teams/checkPermissionsForProjectLegacy(
        int teamId,
        int projectId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/projects/{project_id}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{project_id}', "${ projectId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Team-project.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/checkPermissionsForProjectLegacy');
    }
    Future<void> teams/addOrUpdateProjectPermissionsLegacy(
        int teamId,
        int projectId,
        { Teams/addOrUpdateProjectPermissionsLegacyRequest? teams/addOrUpdateProjectPermissionsLegacyRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/teams/{team_id}/projects/{project_id}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{project_id}', "${ projectId }")
            ,
            body: teams/addOrUpdateProjectPermissionsLegacyRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/addOrUpdateProjectPermissionsLegacy');
    }
    Future<void> teams/removeProjectLegacy(
        int teamId,
        int projectId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/teams/{team_id}/projects/{project_id}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{project_id}', "${ projectId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/removeProjectLegacy');
    }
    Future<List<Minimal-repository>> teams/listReposLegacy(
        int teamId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/repos'
            .replaceAll('{team_id}', "${ teamId }")
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

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listReposLegacy');
    }
    Future<Teams/checkPermissionsForRepoLegacyResponse> teams/checkPermissionsForRepoLegacy(
        int teamId,
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/repos/{owner}/{repo}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Teams/checkPermissionsForRepoLegacyResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/checkPermissionsForRepoLegacy');
    }
    Future<void> teams/addOrUpdateRepoPermissionsLegacy(
        int teamId,
        String owner,
        String repo,
        { Teams/addOrUpdateRepoPermissionsLegacyRequest? teams/addOrUpdateRepoPermissionsLegacyRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/teams/{team_id}/repos/{owner}/{repo}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: teams/addOrUpdateRepoPermissionsLegacyRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/addOrUpdateRepoPermissionsLegacy');
    }
    Future<void> teams/removeRepoLegacy(
        int teamId,
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/teams/{team_id}/repos/{owner}/{repo}'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/removeRepoLegacy');
    }
    Future<List<Team>> teams/listChildLegacy(
        int teamId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/teams'
            .replaceAll('{team_id}', "${ teamId }")
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

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listChildLegacy');
    }
    Future<List<Team-full>> teams/listForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/teams'
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
            return (jsonDecode(response.body) as List).map<Team-full>((e) => Team-full.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $teams/listForAuthenticatedUser');
    }
}
