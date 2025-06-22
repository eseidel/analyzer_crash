import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/dependabot-alert-with-repository.dart';
import 'package:github/model/dependabot-alert-with-repository_state.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency_scope.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency_relationship.dart';
import 'package:github/model/dependabot-alert-security-advisory.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/dependabot-alert-security-advisory_severity.dart';
import 'package:github/model/dependabot-alert-security-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/dependabot-alert-security-advisory_cwes_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
import 'package:github/model/dependabot-alert-security-advisory_references_inner.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/dependabot-alert-with-repository_dismissed_reason.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/dependabot-alert-comma-separated-has.dart';
import 'package:github/model/dependabot-alert-comma-separated-has_inner.dart';
import 'package:github/model/dependabot-alert-scope.dart';
import 'package:github/model/dependabot-alert-sort.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/dependabot-alert-with-repository.dart';
import 'package:github/model/dependabot-alert-with-repository_state.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency_scope.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency_relationship.dart';
import 'package:github/model/dependabot-alert-security-advisory.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/dependabot-alert-security-advisory_severity.dart';
import 'package:github/model/dependabot-alert-security-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/dependabot-alert-security-advisory_cwes_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
import 'package:github/model/dependabot-alert-security-advisory_references_inner.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/dependabot-alert-with-repository_dismissed_reason.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/dependabot-repository-access-details.dart';
import 'package:github/model/dependabot-repository-access-details_default_level.dart';
import 'package:github/model/nullable-simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/dependabot-repository-access-details.dart';
import 'package:github/model/dependabot-repository-access-details_default_level.dart';
import 'package:github/model/nullable-simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/dependabot/update_repository_access_for_org_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/dependabot/set_repository_access_default_level_request.dart';
import 'package:github/model/dependabot/set_repository_access_default_level_request_default_level.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/dependabot-alert-with-repository.dart';
import 'package:github/model/dependabot-alert-with-repository_state.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency_scope.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency_relationship.dart';
import 'package:github/model/dependabot-alert-security-advisory.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/dependabot-alert-security-advisory_severity.dart';
import 'package:github/model/dependabot-alert-security-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/dependabot-alert-security-advisory_cwes_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
import 'package:github/model/dependabot-alert-security-advisory_references_inner.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/dependabot-alert-with-repository_dismissed_reason.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/dependabot-alert-comma-separated-has.dart';
import 'package:github/model/dependabot-alert-comma-separated-has_inner.dart';
import 'package:github/model/dependabot-alert-scope.dart';
import 'package:github/model/dependabot-alert-sort.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/dependabot-alert-with-repository.dart';
import 'package:github/model/dependabot-alert-with-repository_state.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency_scope.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency_relationship.dart';
import 'package:github/model/dependabot-alert-security-advisory.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/dependabot-alert-security-advisory_severity.dart';
import 'package:github/model/dependabot-alert-security-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/dependabot-alert-security-advisory_cwes_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
import 'package:github/model/dependabot-alert-security-advisory_references_inner.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/dependabot-alert-with-repository_dismissed_reason.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/dependabot/list_org_secrets200_response.dart';
import 'package:github/model/organization-dependabot-secret.dart';
import 'package:github/model/organization-dependabot-secret_visibility.dart';
import 'package:github/model/dependabot/list_org_secrets200_response.dart';
import 'package:github/model/organization-dependabot-secret.dart';
import 'package:github/model/organization-dependabot-secret_visibility.dart';
import 'package:github/model/dependabot-public-key.dart';
import 'package:github/model/dependabot-public-key.dart';
import 'package:github/model/organization-dependabot-secret.dart';
import 'package:github/model/organization-dependabot-secret_visibility.dart';
import 'package:github/model/organization-dependabot-secret.dart';
import 'package:github/model/organization-dependabot-secret_visibility.dart';
import 'package:github/model/dependabot/create_or_update_org_secret_request.dart';
import 'package:github/model/dependabot/create_or_update_org_secret_request_visibility.dart';
import 'package:github/model/dependabot/create_or_update_org_secret_response.dart';
import 'package:github/model/dependabot/list_selected_repos_for_org_secret200_response.dart';
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
import 'package:github/model/dependabot/list_selected_repos_for_org_secret200_response.dart';
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
import 'package:github/model/dependabot/set_selected_repos_for_org_secret_request.dart';
import 'package:github/model/dependabot-alert.dart';
import 'package:github/model/dependabot-alert_state.dart';
import 'package:github/model/dependabot-alert_dependency.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert_dependency_scope.dart';
import 'package:github/model/dependabot-alert_dependency_relationship.dart';
import 'package:github/model/dependabot-alert-security-advisory.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/dependabot-alert-security-advisory_severity.dart';
import 'package:github/model/dependabot-alert-security-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/dependabot-alert-security-advisory_cwes_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
import 'package:github/model/dependabot-alert-security-advisory_references_inner.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/dependabot-alert_dismissed_reason.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/dependabot-alert-comma-separated-has.dart';
import 'package:github/model/dependabot-alert-comma-separated-has_inner.dart';
import 'package:github/model/dependabot-alert-scope.dart';
import 'package:github/model/dependabot-alert-sort.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/dependabot-alert.dart';
import 'package:github/model/dependabot-alert_state.dart';
import 'package:github/model/dependabot-alert_dependency.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert_dependency_scope.dart';
import 'package:github/model/dependabot-alert_dependency_relationship.dart';
import 'package:github/model/dependabot-alert-security-advisory.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/dependabot-alert-security-advisory_severity.dart';
import 'package:github/model/dependabot-alert-security-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/dependabot-alert-security-advisory_cwes_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
import 'package:github/model/dependabot-alert-security-advisory_references_inner.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/dependabot-alert_dismissed_reason.dart';
import 'package:github/model/dependabot-alert.dart';
import 'package:github/model/dependabot-alert_state.dart';
import 'package:github/model/dependabot-alert_dependency.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert_dependency_scope.dart';
import 'package:github/model/dependabot-alert_dependency_relationship.dart';
import 'package:github/model/dependabot-alert-security-advisory.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/dependabot-alert-security-advisory_severity.dart';
import 'package:github/model/dependabot-alert-security-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/dependabot-alert-security-advisory_cwes_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
import 'package:github/model/dependabot-alert-security-advisory_references_inner.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/dependabot-alert_dismissed_reason.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/dependabot-alert.dart';
import 'package:github/model/dependabot-alert_state.dart';
import 'package:github/model/dependabot-alert_dependency.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert_dependency_scope.dart';
import 'package:github/model/dependabot-alert_dependency_relationship.dart';
import 'package:github/model/dependabot-alert-security-advisory.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/dependabot-alert-security-advisory_severity.dart';
import 'package:github/model/dependabot-alert-security-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/dependabot-alert-security-advisory_cwes_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
import 'package:github/model/dependabot-alert-security-advisory_references_inner.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/dependabot-alert_dismissed_reason.dart';
import 'package:github/model/dependabot/update_alert_request.dart';
import 'package:github/model/dependabot/update_alert_request_state.dart';
import 'package:github/model/dependabot/update_alert_request_dismissed_reason.dart';
import 'package:github/model/dependabot-alert.dart';
import 'package:github/model/dependabot-alert_state.dart';
import 'package:github/model/dependabot-alert_dependency.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert_dependency_scope.dart';
import 'package:github/model/dependabot-alert_dependency_relationship.dart';
import 'package:github/model/dependabot-alert-security-advisory.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/dependabot-alert-security-advisory_severity.dart';
import 'package:github/model/dependabot-alert-security-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/dependabot-alert-security-advisory_cwes_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
import 'package:github/model/dependabot-alert-security-advisory_references_inner.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/dependabot-alert_dismissed_reason.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/dependabot-alert.dart';
import 'package:github/model/dependabot-alert_state.dart';
import 'package:github/model/dependabot-alert_dependency.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert_dependency_scope.dart';
import 'package:github/model/dependabot-alert_dependency_relationship.dart';
import 'package:github/model/dependabot-alert-security-advisory.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/dependabot-alert-security-advisory_severity.dart';
import 'package:github/model/dependabot-alert-security-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/dependabot-alert-security-advisory_cwes_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
import 'package:github/model/dependabot-alert-security-advisory_references_inner.dart';
import 'package:github/model/dependabot-alert-security-vulnerability.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_severity.dart';
import 'package:github/model/dependabot-alert-security-vulnerability_first_patched_version.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/dependabot-alert_dismissed_reason.dart';
import 'package:github/model/dependabot/list_repo_secrets200_response.dart';
import 'package:github/model/dependabot-secret.dart';
import 'package:github/model/dependabot/list_repo_secrets200_response.dart';
import 'package:github/model/dependabot-secret.dart';
import 'package:github/model/dependabot-public-key.dart';
import 'package:github/model/dependabot-public-key.dart';
import 'package:github/model/dependabot-secret.dart';
import 'package:github/model/dependabot-secret.dart';
import 'package:github/model/dependabot/create_or_update_repo_secret_request.dart';
import 'package:github/model/dependabot/create_or_update_repo_secret_response.dart';
class DependabotApi {
    DependabotApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Dependabot-alert-with-repository>> dependabot/listAlertsForEnterprise(
        String enterprise,
        { String? state,String? severity,String? ecosystem,String? package,String? epssPercentage,Dependabot-alert-comma-separated-has? has,Dependabot-alert-scope? scope,Dependabot-alert-sort? sort = Dependabot-alert-sort.created,Direction? direction = Direction.desc,String? before,String? after,int? first = 30,int? last,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/enterprises/{enterprise}/dependabot/alerts'
            .replaceAll('{enterprise}', "${ enterprise }")
            ,
            queryParameters: {
                'state': ?state.toString(),
                'severity': ?severity.toString(),
                'ecosystem': ?ecosystem.toString(),
                'package': ?package.toString(),
                'epss_percentage': ?epssPercentage.toString(),
                'has': ?has?.toJson().toString(),
                'scope': ?scope?.toJson().toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'first': ?first.toString(),
                'last': ?last.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Dependabot-alert-with-repository>((e) => Dependabot-alert-with-repository.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/listAlertsForEnterprise');
    }
    Future<Dependabot-repository-access-details> dependabot/repositoryAccessForOrg(
        String org,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/organizations/{org}/dependabot/repository-access'
            .replaceAll('{org}', "${ org }")
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
            return Dependabot-repository-access-details.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/repositoryAccessForOrg');
    }
    Future<void> dependabot/updateRepositoryAccessForOrg(
        String org,
        Dependabot/updateRepositoryAccessForOrgRequest dependabot/updateRepositoryAccessForOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/organizations/{org}/dependabot/repository-access'
            .replaceAll('{org}', "${ org }")
            ,
            body: dependabot/updateRepositoryAccessForOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/updateRepositoryAccessForOrg');
    }
    Future<void> dependabot/setRepositoryAccessDefaultLevel(
        String org,
        Dependabot/setRepositoryAccessDefaultLevelRequest dependabot/setRepositoryAccessDefaultLevelRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/organizations/{org}/dependabot/repository-access/default-level'
            .replaceAll('{org}', "${ org }")
            ,
            body: dependabot/setRepositoryAccessDefaultLevelRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/setRepositoryAccessDefaultLevel');
    }
    Future<List<Dependabot-alert-with-repository>> dependabot/listAlertsForOrg(
        String org,
        { String? state,String? severity,String? ecosystem,String? package,String? epssPercentage,Dependabot-alert-comma-separated-has? has,Dependabot-alert-scope? scope,Dependabot-alert-sort? sort = Dependabot-alert-sort.created,Direction? direction = Direction.desc,String? before,String? after,int? first = 30,int? last,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/dependabot/alerts'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'state': ?state.toString(),
                'severity': ?severity.toString(),
                'ecosystem': ?ecosystem.toString(),
                'package': ?package.toString(),
                'epss_percentage': ?epssPercentage.toString(),
                'has': ?has?.toJson().toString(),
                'scope': ?scope?.toJson().toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'first': ?first.toString(),
                'last': ?last.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Dependabot-alert-with-repository>((e) => Dependabot-alert-with-repository.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/listAlertsForOrg');
    }
    Future<Dependabot/listOrgSecrets200Response> dependabot/listOrgSecrets(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/dependabot/secrets'
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
            return Dependabot/listOrgSecrets200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/listOrgSecrets');
    }
    Future<Dependabot-public-key> dependabot/getOrgPublicKey(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/dependabot/secrets/public-key'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Dependabot-public-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/getOrgPublicKey');
    }
    Future<Organization-dependabot-secret> dependabot/getOrgSecret(
        String org,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/dependabot/secrets/{secret_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Organization-dependabot-secret.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/getOrgSecret');
    }
    Future<Dependabot/createOrUpdateOrgSecretResponse> dependabot/createOrUpdateOrgSecret(
        String org,
        String secretName,
        Dependabot/createOrUpdateOrgSecretRequest dependabot/createOrUpdateOrgSecretRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/dependabot/secrets/{secret_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: dependabot/createOrUpdateOrgSecretRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Dependabot/createOrUpdateOrgSecretResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/createOrUpdateOrgSecret');
    }
    Future<void> dependabot/deleteOrgSecret(
        String org,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/dependabot/secrets/{secret_name}'
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

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/deleteOrgSecret');
    }
    Future<Dependabot/listSelectedReposForOrgSecret200Response> dependabot/listSelectedReposForOrgSecret(
        String org,
        String secretName,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/dependabot/secrets/{secret_name}/repositories'
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
            return Dependabot/listSelectedReposForOrgSecret200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/listSelectedReposForOrgSecret');
    }
    Future<void> dependabot/setSelectedReposForOrgSecret(
        String org,
        String secretName,
        Dependabot/setSelectedReposForOrgSecretRequest dependabot/setSelectedReposForOrgSecretRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/dependabot/secrets/{secret_name}/repositories'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: dependabot/setSelectedReposForOrgSecretRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/setSelectedReposForOrgSecret');
    }
    Future<void> dependabot/addSelectedRepoToOrgSecret(
        String org,
        String secretName,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/dependabot/secrets/{secret_name}/repositories/{repository_id}'
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

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/addSelectedRepoToOrgSecret');
    }
    Future<void> dependabot/removeSelectedRepoFromOrgSecret(
        String org,
        String secretName,
        int repositoryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/dependabot/secrets/{secret_name}/repositories/{repository_id}'
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

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/removeSelectedRepoFromOrgSecret');
    }
    Future<List<Dependabot-alert>> dependabot/listAlertsForRepo(
        String owner,
        String repo,
        { String? state,String? severity,String? ecosystem,String? package,String? manifest,String? epssPercentage,Dependabot-alert-comma-separated-has? has,Dependabot-alert-scope? scope,Dependabot-alert-sort? sort = Dependabot-alert-sort.created,Direction? direction = Direction.desc,int? page = 1,int? perPage = 30,String? before,String? after,int? first = 30,int? last, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/dependabot/alerts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'state': ?state.toString(),
                'severity': ?severity.toString(),
                'ecosystem': ?ecosystem.toString(),
                'package': ?package.toString(),
                'manifest': ?manifest.toString(),
                'epss_percentage': ?epssPercentage.toString(),
                'has': ?has?.toJson().toString(),
                'scope': ?scope?.toJson().toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'first': ?first.toString(),
                'last': ?last.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Dependabot-alert>((e) => Dependabot-alert.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/listAlertsForRepo');
    }
    Future<Dependabot-alert> dependabot/getAlert(
        String owner,
        String repo,
        int alertNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/dependabot/alerts/{alert_number}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{alert_number}', "${ alertNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Dependabot-alert.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/getAlert');
    }
    Future<Dependabot-alert> dependabot/updateAlert(
        String owner,
        String repo,
        int alertNumber,
        Dependabot/updateAlertRequest dependabot/updateAlertRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/dependabot/alerts/{alert_number}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{alert_number}', "${ alertNumber }")
            ,
            body: dependabot/updateAlertRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Dependabot-alert.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/updateAlert');
    }
    Future<Dependabot/listRepoSecrets200Response> dependabot/listRepoSecrets(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/dependabot/secrets'
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
            return Dependabot/listRepoSecrets200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/listRepoSecrets');
    }
    Future<Dependabot-public-key> dependabot/getRepoPublicKey(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/dependabot/secrets/public-key'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Dependabot-public-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/getRepoPublicKey');
    }
    Future<Dependabot-secret> dependabot/getRepoSecret(
        String owner,
        String repo,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/dependabot/secrets/{secret_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Dependabot-secret.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/getRepoSecret');
    }
    Future<Dependabot/createOrUpdateRepoSecretResponse> dependabot/createOrUpdateRepoSecret(
        String owner,
        String repo,
        String secretName,
        Dependabot/createOrUpdateRepoSecretRequest dependabot/createOrUpdateRepoSecretRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/dependabot/secrets/{secret_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: dependabot/createOrUpdateRepoSecretRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Dependabot/createOrUpdateRepoSecretResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/createOrUpdateRepoSecret');
    }
    Future<void> dependabot/deleteRepoSecret(
        String owner,
        String repo,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/dependabot/secrets/{secret_name}'
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

        throw ApiException(response.statusCode, 'Unhandled response from $dependabot/deleteRepoSecret');
    }
}
