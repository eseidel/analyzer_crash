import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
@immutable
class Dependabot-alert-with-repository {
    Dependabot-alert-with-repository(
        { required this.number,required this.state,required this.dependency,required this.security_advisory,required this.security_vulnerability,required this.url,required this.html_url,required this.created_at,required this.updated_at,required this.dismissed_at,required this.dismissed_by,required this.dismissed_reason,required this.dismissed_comment,required this.fixed_at, this.auto_dismissed_at,required this.repository,
         }
    );

    factory Dependabot-alert-with-repository.fromJson(Map<String, dynamic>
        json) {
        return Dependabot-alert-with-repository(
            number: (json['number'] as int).toInt() ,
            state: Dependabot-alert-with-repositoryState.fromJson(json['state'] as String) ,
            dependency: Dependabot-alert-with-repositoryDependency.fromJson(json['dependency'] as Map<String, dynamic>) ,
            security_advisory: Dependabot-alert-security-advisory.fromJson(json['security_advisory'] as Map<String, dynamic>) ,
            security_vulnerability: Dependabot-alert-security-vulnerability.fromJson(json['security_vulnerability'] as Map<String, dynamic>) ,
            url: Alert-url((json['url'] as String) ),
            html_url: Alert-html-url((json['html_url'] as String) ),
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            dismissed_at: DateTime.parse(json['dismissed_at'] as String),
            dismissed_by: Nullable-simple-user.fromJson(json['dismissed_by'] as Map<String, dynamic>) ,
            dismissed_reason: Dependabot-alert-with-repositoryDismissedReason.fromJson(json['dismissed_reason'] as String) ,
            dismissed_comment: json['dismissed_comment'] as String ,
            fixed_at: DateTime.parse(json['fixed_at'] as String),
            auto_dismissed_at: maybeParseDateTime(json['auto_dismissed_at'] as String?) ,
            repository: Simple-repository.fromJson(json['repository'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-with-repository? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-with-repository.fromJson(json);
    }

    final int  number;
    final Dependabot-alert-with-repositoryState  state;
    final Dependabot-alert-with-repositoryDependency  dependency;
    final Dependabot-alert-security-advisory  security_advisory;
    final Dependabot-alert-security-vulnerability  security_vulnerability;
    final Alert-url  url;
    final Alert-html-url  html_url;
    final DateTime  created_at;
    final DateTime  updated_at;
    final DateTime  dismissed_at;
    final Nullable-simple-user  dismissed_by;
    final Dependabot-alert-with-repositoryDismissedReason  dismissed_reason;
    final String  dismissed_comment;
    final DateTime  fixed_at;
    final  DateTime? auto_dismissed_at;
    final Simple-repository  repository;


    Map<String, dynamic> toJson() {
        return {
            'number': number,
            'state': state.toJson(),
            'dependency': dependency.toJson(),
            'security_advisory': security_advisory.toJson(),
            'security_vulnerability': security_vulnerability.toJson(),
            'url': url.toJson(),
            'html_url': html_url.toJson(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'dismissed_at': dismissed_at.toIso8601String(),
            'dismissed_by': dismissed_by.toJson(),
            'dismissed_reason': dismissed_reason.toJson(),
            'dismissed_comment': dismissed_comment,
            'fixed_at': fixed_at.toIso8601String(),
            'auto_dismissed_at': auto_dismissed_at?.toIso8601String(),
            'repository': repository.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          number,
          state,
          dependency,
          security_advisory,
          security_vulnerability,
          url,
          html_url,
          created_at,
          updated_at,
          dismissed_at,
          dismissed_by,
          dismissed_reason,
          dismissed_comment,
          fixed_at,
          auto_dismissed_at,
          repository,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot-alert-with-repository
            && number == other.number
            && state == other.state
            && dependency == other.dependency
            && security_advisory == other.security_advisory
            && security_vulnerability == other.security_vulnerability
            && url == other.url
            && html_url == other.html_url
            && created_at == other.created_at
            && updated_at == other.updated_at
            && dismissed_at == other.dismissed_at
            && dismissed_by == other.dismissed_by
            && dismissed_reason == other.dismissed_reason
            && dismissed_comment == other.dismissed_comment
            && fixed_at == other.fixed_at
            && auto_dismissed_at == other.auto_dismissed_at
            && repository == other.repository
        ;
    }
}
