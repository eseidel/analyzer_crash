import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/checks/list_suites_for_ref200_response.dart';
import 'package:github/model/check-suite.dart';
import 'package:github/model/check-suite_status.dart';
import 'package:github/model/check-suite_conclusion.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
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
import 'package:github/model/simple-commit.dart';
import 'package:github/model/simple-commit_author.dart';
import 'package:github/model/simple-commit_committer.dart';
import 'package:github/model/checks/list_suites_for_ref200_response.dart';
import 'package:github/model/check-suite.dart';
import 'package:github/model/check-suite_status.dart';
import 'package:github/model/check-suite_conclusion.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
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
import 'package:github/model/simple-commit.dart';
import 'package:github/model/simple-commit_author.dart';
import 'package:github/model/simple-commit_committer.dart';
@immutable
class Checks&#x2F;listSuitesForRef200Response {
    Checks&#x2F;listSuitesForRef200Response(
        { required this.total_count, this.check_suites = const [],
         }
    );

    factory Checks&#x2F;listSuitesForRef200Response.fromJson(Map<String, dynamic>
        json) {
        return Checks&#x2F;listSuitesForRef200Response(
            total_count: (json['total_count'] as int).toInt() ,
            check_suites: (json['check_suites'] as List).map<Check-suite>((e) => Check-suite.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Checks&#x2F;listSuitesForRef200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Checks&#x2F;listSuitesForRef200Response.fromJson(json);
    }

    final int  total_count;
    final List<Check-suite>  check_suites;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'check_suites': check_suites.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          check_suites,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Checks&#x2F;listSuitesForRef200Response
            && total_count == other.total_count
            && listsEqual(check_suites, other.check_suites)
        ;
    }
}
