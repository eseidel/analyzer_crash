import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/code-scanning-organization-alert-items.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/alert-instances-url.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
import 'package:github/model/code-scanning-alert-rule-summary.dart';
import 'package:github/model/code-scanning-alert-rule-summary_severity.dart';
import 'package:github/model/code-scanning-alert-rule-summary_security_severity_level.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/code-scanning-alert-state-query.dart';
import 'package:github/model/code_scanning/list_alerts_for_org_parameter9.dart';
import 'package:github/model/code-scanning-alert-severity.dart';
import 'package:github/model/code-scanning-organization-alert-items.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/alert-instances-url.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
import 'package:github/model/code-scanning-alert-rule-summary.dart';
import 'package:github/model/code-scanning-alert-rule-summary_severity.dart';
import 'package:github/model/code-scanning-alert-rule-summary_security_severity_level.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert-items.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/alert-instances-url.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
import 'package:github/model/code-scanning-alert-rule-summary.dart';
import 'package:github/model/code-scanning-alert-rule-summary_severity.dart';
import 'package:github/model/code-scanning-alert-rule-summary_security_severity_level.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/code_scanning/list_alerts_for_repo_parameter11.dart';
import 'package:github/model/code-scanning-alert-state-query.dart';
import 'package:github/model/code-scanning-alert-severity.dart';
import 'package:github/model/code-scanning-alert-items.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/alert-instances-url.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
import 'package:github/model/code-scanning-alert-rule-summary.dart';
import 'package:github/model/code-scanning-alert-rule-summary_severity.dart';
import 'package:github/model/code-scanning-alert-rule-summary_security_severity_level.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/alert-instances-url.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
import 'package:github/model/code-scanning-alert-rule.dart';
import 'package:github/model/code-scanning-alert-rule_severity.dart';
import 'package:github/model/code-scanning-alert-rule_security_severity_level.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/alert-instances-url.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
import 'package:github/model/code-scanning-alert-rule.dart';
import 'package:github/model/code-scanning-alert-rule_severity.dart';
import 'package:github/model/code-scanning-alert-rule_security_severity_level.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code_scanning/update_alert_request.dart';
import 'package:github/model/code-scanning-alert-set-state.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
import 'package:github/model/code-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/alert-instances-url.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
import 'package:github/model/code-scanning-alert-rule.dart';
import 'package:github/model/code-scanning-alert-rule_severity.dart';
import 'package:github/model/code-scanning-alert-rule_security_severity_level.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/alert-instances-url.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
import 'package:github/model/code-scanning-alert-rule.dart';
import 'package:github/model/code-scanning-alert-rule_severity.dart';
import 'package:github/model/code-scanning-alert-rule_security_severity_level.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-autofix.dart';
import 'package:github/model/code-scanning-autofix-status.dart';
import 'package:github/model/code-scanning-autofix-description.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-autofix.dart';
import 'package:github/model/code-scanning-autofix-status.dart';
import 'package:github/model/code-scanning-autofix-description.dart';
import 'package:github/model/code-scanning-autofix.dart';
import 'package:github/model/code-scanning-autofix-status.dart';
import 'package:github/model/code-scanning-autofix-description.dart';
import 'package:github/model/code-scanning-autofix.dart';
import 'package:github/model/code-scanning-autofix-status.dart';
import 'package:github/model/code-scanning-autofix-description.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-autofix.dart';
import 'package:github/model/code-scanning-autofix-status.dart';
import 'package:github/model/code-scanning-autofix-description.dart';
import 'package:github/model/code-scanning-autofix-commits.dart';
import 'package:github/model/code-scanning-autofix-commits-response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-autofix-commits-response.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/code-scanning-analysis.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-commit-sha.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-analysis-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-analysis-url.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/code_scanning/list_recent_analyses_parameter10.dart';
import 'package:github/model/code-scanning-analysis.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-commit-sha.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-analysis-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-analysis-url.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-analysis.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-commit-sha.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-analysis-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-analysis-url.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-analysis.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-commit-sha.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-analysis-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-analysis-url.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-analysis-deletion.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-analysis-deletion.dart';
import 'package:github/model/code-scanning-codeql-database.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-codeql-database.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-scanning-codeql-database.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-codeql-database.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code_scanning/create_variant_analysis_request.dart';
import 'package:github/model/code-scanning-variant-analysis.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-scanning-variant-analysis-language.dart';
import 'package:github/model/code-scanning-variant-analysis_status.dart';
import 'package:github/model/code-scanning-variant-analysis_failure_reason.dart';
import 'package:github/model/code-scanning-variant-analysis_scanned_repositories_inner.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories_not_found_repos.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-variant-analysis.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-scanning-variant-analysis-language.dart';
import 'package:github/model/code-scanning-variant-analysis_status.dart';
import 'package:github/model/code-scanning-variant-analysis_failure_reason.dart';
import 'package:github/model/code-scanning-variant-analysis_scanned_repositories_inner.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories_not_found_repos.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-scanning-variant-analysis-language.dart';
import 'package:github/model/code-scanning-variant-analysis_status.dart';
import 'package:github/model/code-scanning-variant-analysis_failure_reason.dart';
import 'package:github/model/code-scanning-variant-analysis_scanned_repositories_inner.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories_not_found_repos.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-variant-analysis.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-scanning-variant-analysis-language.dart';
import 'package:github/model/code-scanning-variant-analysis_status.dart';
import 'package:github/model/code-scanning-variant-analysis_failure_reason.dart';
import 'package:github/model/code-scanning-variant-analysis_scanned_repositories_inner.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories_not_found_repos.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-repo-task.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-variant-analysis-repo-task.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
import 'package:github/model/code-scanning-default-setup.dart';
import 'package:github/model/code-scanning-default-setup_state.dart';
import 'package:github/model/code-scanning-default-setup_languages_inner.dart';
import 'package:github/model/code-scanning-default-setup_runner_type.dart';
import 'package:github/model/code-scanning-default-setup_query_suite.dart';
import 'package:github/model/code-scanning-default-setup_threat_model.dart';
import 'package:github/model/code-scanning-default-setup_schedule.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-default-setup.dart';
import 'package:github/model/code-scanning-default-setup_state.dart';
import 'package:github/model/code-scanning-default-setup_languages_inner.dart';
import 'package:github/model/code-scanning-default-setup_runner_type.dart';
import 'package:github/model/code-scanning-default-setup_query_suite.dart';
import 'package:github/model/code-scanning-default-setup_threat_model.dart';
import 'package:github/model/code-scanning-default-setup_schedule.dart';
import 'package:github/model/code-scanning-default-setup-update.dart';
import 'package:github/model/code-scanning-default-setup-update_state.dart';
import 'package:github/model/code-scanning-default-setup-update_runner_type.dart';
import 'package:github/model/code-scanning-default-setup-update_query_suite.dart';
import 'package:github/model/code-scanning-default-setup-update_threat_model.dart';
import 'package:github/model/code-scanning-default-setup-update_languages_inner.dart';
import 'package:github/model/code-scanning-default-setup-update-response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code_scanning/update_default_setup_response.dart';
import 'package:github/model/code-scanning-default-setup-update-response.dart';
import 'package:github/model/code_scanning/upload_sarif_request.dart';
import 'package:github/model/code-scanning-analysis-commit-sha.dart';
import 'package:github/model/code-scanning-ref-full.dart';
import 'package:github/model/code-scanning-analysis-sarif-file.dart';
import 'package:github/model/code-scanning-sarifs-receipt.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-sarifs-receipt.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
import 'package:github/model/code-scanning-sarifs-status.dart';
import 'package:github/model/code-scanning-sarifs-status_processing_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/code-scanning-sarifs-status.dart';
import 'package:github/model/code-scanning-sarifs-status_processing_status.dart';
class Code-scanningApi {
    Code-scanningApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Code-scanning-organization-alert-items>> codeScanning/listAlertsForOrg(
        String org,
        { Code-scanning-analysis-tool-name? toolName,Code-scanning-analysis-tool-guid? toolGuid,String? before,String? after,int? page = 1,int? perPage = 30,Direction? direction = Direction.desc,Code-scanning-alert-state-query? state,CodeScanning/listAlertsForOrgParameter9? sort = CodeScanning/listAlertsForOrgParameter9.created,Code-scanning-alert-severity? severity, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/code-scanning/alerts'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'tool_name': ?toolName?.toJson().toString(),
                'tool_guid': ?toolGuid?.toJson().toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'direction': ?direction?.toJson().toString(),
                'state': ?state?.toJson().toString(),
                'sort': ?sort?.toJson().toString(),
                'severity': ?severity?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Code-scanning-organization-alert-items>((e) => Code-scanning-organization-alert-items.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/listAlertsForOrg');
    }
    Future<List<Code-scanning-alert-items>> codeScanning/listAlertsForRepo(
        String owner,
        String repo,
        { Code-scanning-analysis-tool-name? toolName,Code-scanning-analysis-tool-guid? toolGuid,int? page = 1,int? perPage = 30,Code-scanning-ref? ref,int? pr,Direction? direction = Direction.desc,String? before,String? after,CodeScanning/listAlertsForRepoParameter11? sort = CodeScanning/listAlertsForRepoParameter11.created,Code-scanning-alert-state-query? state,Code-scanning-alert-severity? severity, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-scanning/alerts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'tool_name': ?toolName?.toJson().toString(),
                'tool_guid': ?toolGuid?.toJson().toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'ref': ?ref?.toJson().toString(),
                'pr': ?pr.toString(),
                'direction': ?direction?.toJson().toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'sort': ?sort?.toJson().toString(),
                'state': ?state?.toJson().toString(),
                'severity': ?severity?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Code-scanning-alert-items>((e) => Code-scanning-alert-items.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/listAlertsForRepo');
    }
    Future<Code-scanning-alert> codeScanning/getAlert(
        String owner,
        String repo,
        int alertNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{alert_number}', "${ alertNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-alert.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/getAlert');
    }
    Future<Code-scanning-alert> codeScanning/updateAlert(
        String owner,
        String repo,
        int alertNumber,
        CodeScanning/updateAlertRequest codeScanning/updateAlertRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{alert_number}', "${ alertNumber }")
            ,
            body: codeScanning/updateAlertRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-alert.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/updateAlert');
    }
    Future<Code-scanning-autofix> codeScanning/getAutofix(
        String owner,
        String repo,
        int alertNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/autofix'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{alert_number}', "${ alertNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-autofix.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/getAutofix');
    }
    Future<Code-scanning-autofix> codeScanning/createAutofix(
        String owner,
        String repo,
        int alertNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/autofix'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{alert_number}', "${ alertNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-autofix.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/createAutofix');
    }
    Future<Code-scanning-autofix-commits-response> codeScanning/commitAutofix(
        String owner,
        String repo,
        int alertNumber,
        { Code-scanning-autofix-commits? code-scanning-autofix-commits, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/autofix/commits'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{alert_number}', "${ alertNumber }")
            ,
            body: code-scanning-autofix-commits?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-autofix-commits-response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/commitAutofix');
    }
    Future<List<Code-scanning-alert-instance>> codeScanning/listAlertInstances(
        String owner,
        String repo,
        int alertNumber,
        { int? page = 1,int? perPage = 30,Code-scanning-ref? ref,int? pr, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/instances'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{alert_number}', "${ alertNumber }")
            ,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'ref': ?ref?.toJson().toString(),
                'pr': ?pr.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Code-scanning-alert-instance>((e) => Code-scanning-alert-instance.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/listAlertInstances');
    }
    Future<List<Code-scanning-analysis>> codeScanning/listRecentAnalyses(
        String owner,
        String repo,
        { Code-scanning-analysis-tool-name? toolName,Code-scanning-analysis-tool-guid? toolGuid,int? page = 1,int? perPage = 30,int? pr,Code-scanning-ref? ref,Code-scanning-analysis-sarif-id? sarifId,Direction? direction = Direction.desc,CodeScanning/listRecentAnalysesParameter10? sort = CodeScanning/listRecentAnalysesParameter10.created, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-scanning/analyses'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'tool_name': ?toolName?.toJson().toString(),
                'tool_guid': ?toolGuid?.toJson().toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'pr': ?pr.toString(),
                'ref': ?ref?.toJson().toString(),
                'sarif_id': ?sarifId?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'sort': ?sort?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Code-scanning-analysis>((e) => Code-scanning-analysis.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/listRecentAnalyses');
    }
    Future<Code-scanning-analysis> codeScanning/getAnalysis(
        String owner,
        String repo,
        int analysisId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-scanning/analyses/{analysis_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{analysis_id}', "${ analysisId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-analysis.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/getAnalysis');
    }
    Future<Code-scanning-analysis-deletion> codeScanning/deleteAnalysis(
        String owner,
        String repo,
        int analysisId,
        { String? confirmDelete, }
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/code-scanning/analyses/{analysis_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{analysis_id}', "${ analysisId }")
            ,
            queryParameters: {
                'confirm_delete': ?confirmDelete.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-analysis-deletion.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/deleteAnalysis');
    }
    Future<List<Code-scanning-codeql-database>> codeScanning/listCodeqlDatabases(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-scanning/codeql/databases'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Code-scanning-codeql-database>((e) => Code-scanning-codeql-database.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/listCodeqlDatabases');
    }
    Future<Code-scanning-codeql-database> codeScanning/getCodeqlDatabase(
        String owner,
        String repo,
        String language,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-scanning/codeql/databases/{language}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{language}', "${ language }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-codeql-database.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/getCodeqlDatabase');
    }
    Future<void> codeScanning/deleteCodeqlDatabase(
        String owner,
        String repo,
        String language,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/code-scanning/codeql/databases/{language}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{language}', "${ language }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/deleteCodeqlDatabase');
    }
    Future<Code-scanning-variant-analysis> codeScanning/createVariantAnalysis(
        String owner,
        String repo,
        CodeScanning/createVariantAnalysisRequest codeScanning/createVariantAnalysisRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/code-scanning/codeql/variant-analyses'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: codeScanning/createVariantAnalysisRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-variant-analysis.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/createVariantAnalysis');
    }
    Future<Code-scanning-variant-analysis> codeScanning/getVariantAnalysis(
        String owner,
        String repo,
        int codeqlVariantAnalysisId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-scanning/codeql/variant-analyses/{codeql_variant_analysis_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{codeql_variant_analysis_id}', "${ codeqlVariantAnalysisId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-variant-analysis.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/getVariantAnalysis');
    }
    Future<Code-scanning-variant-analysis-repo-task> codeScanning/getVariantAnalysisRepoTask(
        String owner,
        String repo,
        int codeqlVariantAnalysisId,
        String repoOwner,
        String repoName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-scanning/codeql/variant-analyses/{codeql_variant_analysis_id}/repos/{repo_owner}/{repo_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{codeql_variant_analysis_id}', "${ codeqlVariantAnalysisId }")
                        .replaceAll('{repo_owner}', "${ repoOwner }")
                        .replaceAll('{repo_name}', "${ repoName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-variant-analysis-repo-task.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/getVariantAnalysisRepoTask');
    }
    Future<Code-scanning-default-setup> codeScanning/getDefaultSetup(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-scanning/default-setup'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-default-setup.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/getDefaultSetup');
    }
    Future<CodeScanning/updateDefaultSetupResponse> codeScanning/updateDefaultSetup(
        String owner,
        String repo,
        Code-scanning-default-setup-update code-scanning-default-setup-update,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/code-scanning/default-setup'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: code-scanning-default-setup-update.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return CodeScanning/updateDefaultSetupResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/updateDefaultSetup');
    }
    Future<Code-scanning-sarifs-receipt> codeScanning/uploadSarif(
        String owner,
        String repo,
        CodeScanning/uploadSarifRequest codeScanning/uploadSarifRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/code-scanning/sarifs'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: codeScanning/uploadSarifRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-sarifs-receipt.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/uploadSarif');
    }
    Future<Code-scanning-sarifs-status> codeScanning/getSarif(
        String owner,
        String repo,
        String sarifId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/code-scanning/sarifs/{sarif_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{sarif_id}', "${ sarifId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-scanning-sarifs-status.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codeScanning/getSarif');
    }
}
