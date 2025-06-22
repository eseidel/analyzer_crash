import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory-update.dart';
import 'package:github/model/repository-advisory-update_vulnerabilities_inner.dart';
import 'package:github/model/repository-advisory-update_vulnerabilities_inner_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory-update_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-update_severity.dart';
import 'package:github/model/repository-advisory-update_state.dart';
import 'package:github/model/repository-advisory-update.dart';
import 'package:github/model/repository-advisory-update_vulnerabilities_inner.dart';
import 'package:github/model/repository-advisory-update_vulnerabilities_inner_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory-update_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-update_severity.dart';
import 'package:github/model/repository-advisory-update_state.dart';
@immutable
class Repository-advisory-update {
    Repository-advisory-update(
        {  this.summary, this.description, this.cve_id, this.vulnerabilities = const [], this.cwe_ids = const [], this.credits = const [], this.severity, this.cvss_vector_string, this.state, this.collaborating_users = const [], this.collaborating_teams = const [],
         }
    );

    factory Repository-advisory-update.fromJson(Map<String, dynamic>
        json) {
        return Repository-advisory-update(
            summary: json['summary'] as String? ,
            description: json['description'] as String? ,
            cve_id: json['cve_id'] as String? ,
            vulnerabilities: (json['vulnerabilities'] as List?)?.map<Repository-advisory-updateVulnerabilitiesInner>((e) => Repository-advisory-updateVulnerabilitiesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            cwe_ids: (json['cwe_ids'] as List?)?.cast<String>() ,
            credits: (json['credits'] as List?)?.map<Repository-advisory-updateCreditsInner>((e) => Repository-advisory-updateCreditsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            severity: Repository-advisory-updateSeverity.maybeFromJson(json['severity'] as String?) ,
            cvss_vector_string: json['cvss_vector_string'] as String? ,
            state: Repository-advisory-updateState.maybeFromJson(json['state'] as String?) ,
            collaborating_users: (json['collaborating_users'] as List?)?.cast<String>() ,
            collaborating_teams: (json['collaborating_teams'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisory-update? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisory-update.fromJson(json);
    }

    final  String? summary;
    final  String? description;
    final  String? cve_id;
    final  List<Repository-advisory-updateVulnerabilitiesInner>? vulnerabilities;
    final  List<String>? cwe_ids;
    final  List<Repository-advisory-updateCreditsInner>? credits;
    final  Repository-advisory-updateSeverity? severity;
    final  String? cvss_vector_string;
    final  Repository-advisory-updateState? state;
    final  List<String>? collaborating_users;
    final  List<String>? collaborating_teams;


    Map<String, dynamic> toJson() {
        return {
            'summary': summary,
            'description': description,
            'cve_id': cve_id,
            'vulnerabilities': vulnerabilities?.map((e) => e.toJson()).toList(),
            'cwe_ids': cwe_ids,
            'credits': credits?.map((e) => e.toJson()).toList(),
            'severity': severity?.toJson(),
            'cvss_vector_string': cvss_vector_string,
            'state': state?.toJson(),
            'collaborating_users': collaborating_users,
            'collaborating_teams': collaborating_teams,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          summary,
          description,
          cve_id,
          vulnerabilities,
          cwe_ids,
          credits,
          severity,
          cvss_vector_string,
          state,
          collaborating_users,
          collaborating_teams,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-advisory-update
            && summary == other.summary
            && description == other.description
            && cve_id == other.cve_id
            && listsEqual(vulnerabilities, other.vulnerabilities)
            && listsEqual(cwe_ids, other.cwe_ids)
            && listsEqual(credits, other.credits)
            && severity == other.severity
            && cvss_vector_string == other.cvss_vector_string
            && state == other.state
            && listsEqual(collaborating_users, other.collaborating_users)
            && listsEqual(collaborating_teams, other.collaborating_teams)
        ;
    }
}
