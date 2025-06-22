import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/global-advisory.dart';
import 'package:github/model/global-advisory_type.dart';
import 'package:github/model/global-advisory_severity.dart';
import 'package:github/model/global-advisory_identifiers_inner.dart';
import 'package:github/model/global-advisory_identifiers_inner_type.dart';
import 'package:github/model/vulnerability.dart';
import 'package:github/model/vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/global-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/global-advisory_cwes_inner.dart';
import 'package:github/model/global-advisory_credits_inner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter1.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter4.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter5.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter7.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter17.dart';
import 'package:github/model/global-advisory.dart';
import 'package:github/model/global-advisory_type.dart';
import 'package:github/model/global-advisory_severity.dart';
import 'package:github/model/global-advisory_identifiers_inner.dart';
import 'package:github/model/global-advisory_identifiers_inner_type.dart';
import 'package:github/model/vulnerability.dart';
import 'package:github/model/vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/global-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/global-advisory_cwes_inner.dart';
import 'package:github/model/global-advisory_credits_inner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/global-advisory.dart';
import 'package:github/model/global-advisory_type.dart';
import 'package:github/model/global-advisory_severity.dart';
import 'package:github/model/global-advisory_identifiers_inner.dart';
import 'package:github/model/global-advisory_identifiers_inner_type.dart';
import 'package:github/model/vulnerability.dart';
import 'package:github/model/vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/global-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/global-advisory_cwes_inner.dart';
import 'package:github/model/global-advisory_credits_inner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/global-advisory.dart';
import 'package:github/model/global-advisory_type.dart';
import 'package:github/model/global-advisory_severity.dart';
import 'package:github/model/global-advisory_identifiers_inner.dart';
import 'package:github/model/global-advisory_identifiers_inner_type.dart';
import 'package:github/model/vulnerability.dart';
import 'package:github/model/vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/global-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/global-advisory_cwes_inner.dart';
import 'package:github/model/global-advisory_credits_inner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory-vulnerability.dart';
import 'package:github/model/repository-advisory-vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/repository-advisory_cwes_inner.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/security_advisories/list_org_repository_advisories_parameter2.dart';
import 'package:github/model/security_advisories/list_org_repository_advisories_parameter6.dart';
import 'package:github/model/repository-advisory.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory-vulnerability.dart';
import 'package:github/model/repository-advisory-vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/repository-advisory_cwes_inner.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory-vulnerability.dart';
import 'package:github/model/repository-advisory-vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/repository-advisory_cwes_inner.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/security_advisories/list_repository_advisories_parameter3.dart';
import 'package:github/model/security_advisories/list_repository_advisories_parameter7.dart';
import 'package:github/model/repository-advisory.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory-vulnerability.dart';
import 'package:github/model/repository-advisory-vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/repository-advisory_cwes_inner.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory-create.dart';
import 'package:github/model/repository-advisory-create_vulnerabilities_inner.dart';
import 'package:github/model/repository-advisory-create_vulnerabilities_inner_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory-create_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-create_severity.dart';
import 'package:github/model/repository-advisory.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory-vulnerability.dart';
import 'package:github/model/repository-advisory-vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/repository-advisory_cwes_inner.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/repository-advisory.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory-vulnerability.dart';
import 'package:github/model/repository-advisory-vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/repository-advisory_cwes_inner.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/private-vulnerability-report-create.dart';
import 'package:github/model/private-vulnerability-report-create_vulnerabilities_inner.dart';
import 'package:github/model/private-vulnerability-report-create_vulnerabilities_inner_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/private-vulnerability-report-create_severity.dart';
import 'package:github/model/repository-advisory.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory-vulnerability.dart';
import 'package:github/model/repository-advisory-vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/repository-advisory_cwes_inner.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/repository-advisory.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory-vulnerability.dart';
import 'package:github/model/repository-advisory-vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/repository-advisory_cwes_inner.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory-vulnerability.dart';
import 'package:github/model/repository-advisory-vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/repository-advisory_cwes_inner.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-advisory.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory-vulnerability.dart';
import 'package:github/model/repository-advisory-vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/repository-advisory_cwes_inner.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory-update.dart';
import 'package:github/model/repository-advisory-update_vulnerabilities_inner.dart';
import 'package:github/model/repository-advisory-update_vulnerabilities_inner_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory-update_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-update_severity.dart';
import 'package:github/model/repository-advisory-update_state.dart';
import 'package:github/model/repository-advisory.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory-vulnerability.dart';
import 'package:github/model/repository-advisory-vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/repository-advisory_cwes_inner.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/repository-advisory.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory-vulnerability.dart';
import 'package:github/model/repository-advisory-vulnerability_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/repository-advisory_cwes_inner.dart';
import 'package:github/model/repository-advisory_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
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
class Security-advisoriesApi {
    Security-advisoriesApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Global-advisory>> securityAdvisories/listGlobalAdvisories(
        { String? ghsaId,SecurityAdvisories/listGlobalAdvisoriesParameter1? type = SecurityAdvisories/listGlobalAdvisoriesParameter1.reviewed,String? cveId,Security-advisory-ecosystems? ecosystem,SecurityAdvisories/listGlobalAdvisoriesParameter4? severity,SecurityAdvisories/listGlobalAdvisoriesParameter5? cwes,bool? isWithdrawn,SecurityAdvisories/listGlobalAdvisoriesParameter7? affects,String? published,String? updated,String? modified,String? epssPercentage,String? epssPercentile,String? before,String? after,Direction? direction = Direction.desc,int? perPage = 30,SecurityAdvisories/listGlobalAdvisoriesParameter17? sort = SecurityAdvisories/listGlobalAdvisoriesParameter17.published, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/advisories'
,
            queryParameters: {
                'ghsa_id': ?ghsaId.toString(),
                'type': ?type?.toJson().toString(),
                'cve_id': ?cveId.toString(),
                'ecosystem': ?ecosystem?.toJson().toString(),
                'severity': ?severity?.toJson().toString(),
                'cwes': ?cwes?.toJson().toString(),
                'is_withdrawn': ?isWithdrawn.toString(),
                'affects': ?affects?.toJson().toString(),
                'published': ?published.toString(),
                'updated': ?updated.toString(),
                'modified': ?modified.toString(),
                'epss_percentage': ?epssPercentage.toString(),
                'epss_percentile': ?epssPercentile.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'sort': ?sort?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Global-advisory>((e) => Global-advisory.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $securityAdvisories/listGlobalAdvisories');
    }
    Future<Global-advisory> securityAdvisories/getGlobalAdvisory(
        String ghsaId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/advisories/{ghsa_id}'
            .replaceAll('{ghsa_id}', "${ ghsaId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Global-advisory.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $securityAdvisories/getGlobalAdvisory');
    }
    Future<List<Repository-advisory>> securityAdvisories/listOrgRepositoryAdvisories(
        String org,
        { Direction? direction = Direction.desc,SecurityAdvisories/listOrgRepositoryAdvisoriesParameter2? sort = SecurityAdvisories/listOrgRepositoryAdvisoriesParameter2.created,String? before,String? after,int? perPage = 30,SecurityAdvisories/listOrgRepositoryAdvisoriesParameter6? state, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/security-advisories'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'direction': ?direction?.toJson().toString(),
                'sort': ?sort?.toJson().toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'per_page': ?perPage.toString(),
                'state': ?state?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Repository-advisory>((e) => Repository-advisory.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $securityAdvisories/listOrgRepositoryAdvisories');
    }
    Future<List<Repository-advisory>> securityAdvisories/listRepositoryAdvisories(
        String owner,
        String repo,
        { Direction? direction = Direction.desc,SecurityAdvisories/listRepositoryAdvisoriesParameter3? sort = SecurityAdvisories/listRepositoryAdvisoriesParameter3.created,String? before,String? after,int? perPage = 30,SecurityAdvisories/listRepositoryAdvisoriesParameter7? state, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/security-advisories'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'direction': ?direction?.toJson().toString(),
                'sort': ?sort?.toJson().toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'per_page': ?perPage.toString(),
                'state': ?state?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Repository-advisory>((e) => Repository-advisory.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $securityAdvisories/listRepositoryAdvisories');
    }
    Future<Repository-advisory> securityAdvisories/createRepositoryAdvisory(
        String owner,
        String repo,
        Repository-advisory-create repository-advisory-create,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/security-advisories'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repository-advisory-create.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repository-advisory.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $securityAdvisories/createRepositoryAdvisory');
    }
    Future<Repository-advisory> securityAdvisories/createPrivateVulnerabilityReport(
        String owner,
        String repo,
        Private-vulnerability-report-create private-vulnerability-report-create,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/security-advisories/reports'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: private-vulnerability-report-create.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repository-advisory.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $securityAdvisories/createPrivateVulnerabilityReport');
    }
    Future<Repository-advisory> securityAdvisories/getRepositoryAdvisory(
        String owner,
        String repo,
        String ghsaId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/security-advisories/{ghsa_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ghsa_id}', "${ ghsaId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repository-advisory.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $securityAdvisories/getRepositoryAdvisory');
    }
    Future<Repository-advisory> securityAdvisories/updateRepositoryAdvisory(
        String owner,
        String repo,
        String ghsaId,
        Repository-advisory-update repository-advisory-update,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/security-advisories/{ghsa_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ghsa_id}', "${ ghsaId }")
            ,
            body: repository-advisory-update.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repository-advisory.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $securityAdvisories/updateRepositoryAdvisory');
    }
    Future<dynamic> securityAdvisories/createRepositoryAdvisoryCveRequest(
        String owner,
        String repo,
        String ghsaId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/security-advisories/{ghsa_id}/cve'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ghsa_id}', "${ ghsaId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $securityAdvisories/createRepositoryAdvisoryCveRequest');
    }
    Future<Full-repository> securityAdvisories/createFork(
        String owner,
        String repo,
        String ghsaId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/security-advisories/{ghsa_id}/forks'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ghsa_id}', "${ ghsaId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Full-repository.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $securityAdvisories/createFork');
    }
}
