import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
@immutable
class Repository-advisory {
    Repository-advisory(
        { required this.ghsa_id,required this.cve_id,required this.url,required this.html_url,required this.summary,required this.description,required this.severity,required this.author,required this.publisher, this.identifiers = const [],required this.state,required this.created_at,required this.updated_at,required this.published_at,required this.closed_at,required this.withdrawn_at,required this.submission, this.vulnerabilities = const [],required this.cvss, this.cvss_severities, this.cwes = const [], this.cwe_ids = const [], this.credits = const [], this.credits_detailed = const [], this.collaborating_users = const [], this.collaborating_teams = const [],required this.private_fork,
         }
    );

    factory Repository-advisory.fromJson(Map<String, dynamic>
        json) {
        return Repository-advisory(
            ghsa_id: json['ghsa_id'] as String ,
            cve_id: json['cve_id'] as String ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            summary: json['summary'] as String ,
            description: json['description'] as String ,
            severity: Repository-advisorySeverity.fromJson(json['severity'] as String) ,
            author: Simple-user.fromJson(json['author'] as Map<String, dynamic>) ,
            publisher: Simple-user.fromJson(json['publisher'] as Map<String, dynamic>) ,
            identifiers: (json['identifiers'] as List).map<Repository-advisoryIdentifiersInner>((e) => Repository-advisoryIdentifiersInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            state: Repository-advisoryState.fromJson(json['state'] as String) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            published_at: DateTime.parse(json['published_at'] as String),
            closed_at: DateTime.parse(json['closed_at'] as String),
            withdrawn_at: DateTime.parse(json['withdrawn_at'] as String),
            submission: Repository-advisorySubmission.fromJson(json['submission'] as Map<String, dynamic>) ,
            vulnerabilities: (json['vulnerabilities'] as List).map<Repository-advisory-vulnerability>((e) => Repository-advisory-vulnerability.fromJson(e as Map<String, dynamic>) ).toList() ,
            cvss: Repository-advisoryCvss.fromJson(json['cvss'] as Map<String, dynamic>) ,
            cvss_severities: Cvss-severities.maybeFromJson(json['cvss_severities'] as Map<String, dynamic>?) ,
            cwes: (json['cwes'] as List).map<Repository-advisoryCwesInner>((e) => Repository-advisoryCwesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            cwe_ids: (json['cwe_ids'] as List).cast<String>() ,
            credits: (json['credits'] as List).map<Repository-advisoryCreditsInner>((e) => Repository-advisoryCreditsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            credits_detailed: (json['credits_detailed'] as List).map<Repository-advisory-credit>((e) => Repository-advisory-credit.fromJson(e as Map<String, dynamic>) ).toList() ,
            collaborating_users: (json['collaborating_users'] as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ,
            collaborating_teams: (json['collaborating_teams'] as List).map<Team>((e) => Team.fromJson(e as Map<String, dynamic>) ).toList() ,
            private_fork: Simple-repository.fromJson(json['private_fork'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisory? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisory.fromJson(json);
    }

    final String  ghsa_id;
    final String  cve_id;
    final String  url;
    final String  html_url;
    final String  summary;
    final String  description;
    final Repository-advisorySeverity  severity;
    final Simple-user  author;
    final Simple-user  publisher;
    final List<Repository-advisoryIdentifiersInner>  identifiers;
    final Repository-advisoryState  state;
    final DateTime  created_at;
    final DateTime  updated_at;
    final DateTime  published_at;
    final DateTime  closed_at;
    final DateTime  withdrawn_at;
    final Repository-advisorySubmission  submission;
    final List<Repository-advisory-vulnerability>  vulnerabilities;
    final Repository-advisoryCvss  cvss;
    final  Cvss-severities? cvss_severities;
    final List<Repository-advisoryCwesInner>  cwes;
    final List<String>  cwe_ids;
    final List<Repository-advisoryCreditsInner>  credits;
    final List<Repository-advisory-credit>  credits_detailed;
    final List<Simple-user>  collaborating_users;
    final List<Team>  collaborating_teams;
    final Simple-repository  private_fork;


    Map<String, dynamic> toJson() {
        return {
            'ghsa_id': ghsa_id,
            'cve_id': cve_id,
            'url': url,
            'html_url': html_url,
            'summary': summary,
            'description': description,
            'severity': severity.toJson(),
            'author': author.toJson(),
            'publisher': publisher.toJson(),
            'identifiers': identifiers.map((e) => e.toJson()).toList(),
            'state': state.toJson(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'published_at': published_at.toIso8601String(),
            'closed_at': closed_at.toIso8601String(),
            'withdrawn_at': withdrawn_at.toIso8601String(),
            'submission': submission.toJson(),
            'vulnerabilities': vulnerabilities.map((e) => e.toJson()).toList(),
            'cvss': cvss.toJson(),
            'cvss_severities': cvss_severities?.toJson(),
            'cwes': cwes.map((e) => e.toJson()).toList(),
            'cwe_ids': cwe_ids,
            'credits': credits.map((e) => e.toJson()).toList(),
            'credits_detailed': credits_detailed.map((e) => e.toJson()).toList(),
            'collaborating_users': collaborating_users.map((e) => e.toJson()).toList(),
            'collaborating_teams': collaborating_teams.map((e) => e.toJson()).toList(),
            'private_fork': private_fork.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ghsa_id,
          cve_id,
          url,
          html_url,
          summary,
          description,
          severity,
          author,
          publisher,
          identifiers,
          state,
          created_at,
          updated_at,
          published_at,
          closed_at,
          withdrawn_at,
          submission,
          vulnerabilities,
          cvss,
          cvss_severities,
          cwes,
          cwe_ids,
          credits,
          credits_detailed,
          collaborating_users,
          collaborating_teams,
          private_fork,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-advisory
            && ghsa_id == other.ghsa_id
            && cve_id == other.cve_id
            && url == other.url
            && html_url == other.html_url
            && summary == other.summary
            && description == other.description
            && severity == other.severity
            && author == other.author
            && publisher == other.publisher
            && listsEqual(identifiers, other.identifiers)
            && state == other.state
            && created_at == other.created_at
            && updated_at == other.updated_at
            && published_at == other.published_at
            && closed_at == other.closed_at
            && withdrawn_at == other.withdrawn_at
            && submission == other.submission
            && listsEqual(vulnerabilities, other.vulnerabilities)
            && cvss == other.cvss
            && cvss_severities == other.cvss_severities
            && listsEqual(cwes, other.cwes)
            && listsEqual(cwe_ids, other.cwe_ids)
            && listsEqual(credits, other.credits)
            && listsEqual(credits_detailed, other.credits_detailed)
            && listsEqual(collaborating_users, other.collaborating_users)
            && listsEqual(collaborating_teams, other.collaborating_teams)
            && private_fork == other.private_fork
        ;
    }
}
