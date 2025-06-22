import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
@immutable
class Codespaces&#x2F;listInOrganization200Response {
    Codespaces&#x2F;listInOrganization200Response(
        { required this.total_count, this.codespaces = const [],
         }
    );

    factory Codespaces&#x2F;listInOrganization200Response.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;listInOrganization200Response(
            total_count: (json['total_count'] as int).toInt() ,
            codespaces: (json['codespaces'] as List).map<Codespace>((e) => Codespace.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;listInOrganization200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;listInOrganization200Response.fromJson(json);
    }

    final int  total_count;
    final List<Codespace>  codespaces;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'codespaces': codespaces.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          codespaces,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;listInOrganization200Response
            && total_count == other.total_count
            && listsEqual(codespaces, other.codespaces)
        ;
    }
}
