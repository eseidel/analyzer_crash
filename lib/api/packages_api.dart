import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/packages/list_packages_for_organization_parameter0.dart';
import 'package:github/model/package-visibility.dart';
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package-type.dart';
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package-type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/packages/get_all_package_versions_for_package_owned_by_org_parameter5.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/packages/list_packages_for_authenticated_user_parameter0.dart';
import 'package:github/model/package-visibility.dart';
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package-type.dart';
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package-type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/packages/get_all_package_versions_for_package_owned_by_authenticated_user_parameter4.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/packages/list_packages_for_user_parameter0.dart';
import 'package:github/model/package-visibility.dart';
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package-type.dart';
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
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
import 'package:github/model/package-type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/package-type.dart';
class PackagesApi {
    PackagesApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Package>> packages/listDockerMigrationConflictingPackagesForOrganization(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/docker/conflicts'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Package>((e) => Package.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/listDockerMigrationConflictingPackagesForOrganization');
    }
    Future<List<Package>> packages/listPackagesForOrganization(
        Packages/listPackagesForOrganizationParameter0 packageType,
        String org,
        { Package-visibility? visibility,int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/packages'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'package_type': packageType.toJson().toString(),
                'visibility': ?visibility?.toJson().toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Package>((e) => Package.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/listPackagesForOrganization');
    }
    Future<Package> packages/getPackageForOrganization(
        Package-type packageType,
        String packageName,
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/packages/{package_type}/{package_name}'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Package.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/getPackageForOrganization');
    }
    Future<void> packages/deletePackageForOrg(
        Package-type packageType,
        String packageName,
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/packages/{package_type}/{package_name}'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/deletePackageForOrg');
    }
    Future<void> packages/restorePackageForOrg(
        Package-type packageType,
        String packageName,
        String org,
        { String? token, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/packages/{package_type}/{package_name}/restore'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'token': ?token.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/restorePackageForOrg');
    }
    Future<List<Package-version>> packages/getAllPackageVersionsForPackageOwnedByOrg(
        Package-type packageType,
        String packageName,
        String org,
        { int? page = 1,int? perPage = 30,Packages/getAllPackageVersionsForPackageOwnedByOrgParameter5? state = Packages/getAllPackageVersionsForPackageOwnedByOrgParameter5.active, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/packages/{package_type}/{package_name}/versions'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'state': ?state?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Package-version>((e) => Package-version.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/getAllPackageVersionsForPackageOwnedByOrg');
    }
    Future<Package-version> packages/getPackageVersionForOrganization(
        Package-type packageType,
        String packageName,
        String org,
        int packageVersionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{org}', "${ org }")
                        .replaceAll('{package_version_id}', "${ packageVersionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Package-version.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/getPackageVersionForOrganization');
    }
    Future<void> packages/deletePackageVersionForOrg(
        Package-type packageType,
        String packageName,
        String org,
        int packageVersionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{org}', "${ org }")
                        .replaceAll('{package_version_id}', "${ packageVersionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/deletePackageVersionForOrg');
    }
    Future<void> packages/restorePackageVersionForOrg(
        Package-type packageType,
        String packageName,
        String org,
        int packageVersionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}/restore'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{org}', "${ org }")
                        .replaceAll('{package_version_id}', "${ packageVersionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/restorePackageVersionForOrg');
    }
    Future<List<Package>> packages/listDockerMigrationConflictingPackagesForAuthenticatedUser(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/docker/conflicts'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Package>((e) => Package.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/listDockerMigrationConflictingPackagesForAuthenticatedUser');
    }
    Future<List<Package>> packages/listPackagesForAuthenticatedUser(
        Packages/listPackagesForAuthenticatedUserParameter0 packageType,
        { Package-visibility? visibility,int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/packages'
,
            queryParameters: {
                'package_type': packageType.toJson().toString(),
                'visibility': ?visibility?.toJson().toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Package>((e) => Package.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/listPackagesForAuthenticatedUser');
    }
    Future<Package> packages/getPackageForAuthenticatedUser(
        Package-type packageType,
        String packageName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/packages/{package_type}/{package_name}'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Package.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/getPackageForAuthenticatedUser');
    }
    Future<void> packages/deletePackageForAuthenticatedUser(
        Package-type packageType,
        String packageName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/packages/{package_type}/{package_name}'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/deletePackageForAuthenticatedUser');
    }
    Future<void> packages/restorePackageForAuthenticatedUser(
        Package-type packageType,
        String packageName,
        { String? token, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/packages/{package_type}/{package_name}/restore'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
            ,
            queryParameters: {
                'token': ?token.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/restorePackageForAuthenticatedUser');
    }
    Future<List<Package-version>> packages/getAllPackageVersionsForPackageOwnedByAuthenticatedUser(
        Package-type packageType,
        String packageName,
        { int? page = 1,int? perPage = 30,Packages/getAllPackageVersionsForPackageOwnedByAuthenticatedUserParameter4? state = Packages/getAllPackageVersionsForPackageOwnedByAuthenticatedUserParameter4.active, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/packages/{package_type}/{package_name}/versions'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
            ,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'state': ?state?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Package-version>((e) => Package-version.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/getAllPackageVersionsForPackageOwnedByAuthenticatedUser');
    }
    Future<Package-version> packages/getPackageVersionForAuthenticatedUser(
        Package-type packageType,
        String packageName,
        int packageVersionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/packages/{package_type}/{package_name}/versions/{package_version_id}'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{package_version_id}', "${ packageVersionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Package-version.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/getPackageVersionForAuthenticatedUser');
    }
    Future<void> packages/deletePackageVersionForAuthenticatedUser(
        Package-type packageType,
        String packageName,
        int packageVersionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/packages/{package_type}/{package_name}/versions/{package_version_id}'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{package_version_id}', "${ packageVersionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/deletePackageVersionForAuthenticatedUser');
    }
    Future<void> packages/restorePackageVersionForAuthenticatedUser(
        Package-type packageType,
        String packageName,
        int packageVersionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/packages/{package_type}/{package_name}/versions/{package_version_id}/restore'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{package_version_id}', "${ packageVersionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/restorePackageVersionForAuthenticatedUser');
    }
    Future<List<Package>> packages/listDockerMigrationConflictingPackagesForUser(
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/docker/conflicts'
            .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Package>((e) => Package.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/listDockerMigrationConflictingPackagesForUser');
    }
    Future<List<Package>> packages/listPackagesForUser(
        Packages/listPackagesForUserParameter0 packageType,
        String username,
        { Package-visibility? visibility,int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/packages'
            .replaceAll('{username}', "${ username }")
            ,
            queryParameters: {
                'package_type': packageType.toJson().toString(),
                'visibility': ?visibility?.toJson().toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Package>((e) => Package.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/listPackagesForUser');
    }
    Future<Package> packages/getPackageForUser(
        Package-type packageType,
        String packageName,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/packages/{package_type}/{package_name}'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Package.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/getPackageForUser');
    }
    Future<void> packages/deletePackageForUser(
        Package-type packageType,
        String packageName,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/users/{username}/packages/{package_type}/{package_name}'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/deletePackageForUser');
    }
    Future<void> packages/restorePackageForUser(
        Package-type packageType,
        String packageName,
        String username,
        { String? token, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/users/{username}/packages/{package_type}/{package_name}/restore'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{username}', "${ username }")
            ,
            queryParameters: {
                'token': ?token.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/restorePackageForUser');
    }
    Future<List<Package-version>> packages/getAllPackageVersionsForPackageOwnedByUser(
        Package-type packageType,
        String packageName,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/packages/{package_type}/{package_name}/versions'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Package-version>((e) => Package-version.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/getAllPackageVersionsForPackageOwnedByUser');
    }
    Future<Package-version> packages/getPackageVersionForUser(
        Package-type packageType,
        String packageName,
        int packageVersionId,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{package_version_id}', "${ packageVersionId }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Package-version.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/getPackageVersionForUser');
    }
    Future<void> packages/deletePackageVersionForUser(
        Package-type packageType,
        String packageName,
        String username,
        int packageVersionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{username}', "${ username }")
                        .replaceAll('{package_version_id}', "${ packageVersionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/deletePackageVersionForUser');
    }
    Future<void> packages/restorePackageVersionForUser(
        Package-type packageType,
        String packageName,
        String username,
        int packageVersionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}/restore'
            .replaceAll('{package_type}', "${ packageType.toJson() }")
                        .replaceAll('{package_name}', "${ packageName }")
                        .replaceAll('{username}', "${ username }")
                        .replaceAll('{package_version_id}', "${ packageVersionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $packages/restorePackageVersionForUser');
    }
}
