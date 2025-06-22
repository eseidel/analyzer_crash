import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory-create.dart';
import 'package:github/model/repository-advisory-create_vulnerabilities_inner.dart';
import 'package:github/model/repository-advisory-create_vulnerabilities_inner_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory-create_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-create_severity.dart';
import 'package:github/model/repository-advisory-create.dart';
import 'package:github/model/repository-advisory-create_vulnerabilities_inner.dart';
import 'package:github/model/repository-advisory-create_vulnerabilities_inner_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory-create_credits_inner.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-create_severity.dart';
@immutable
class Repository-advisory-create {
    Repository-advisory-create(
        { required this.summary,required this.description, this.cve_id, this.vulnerabilities = const [], this.cwe_ids = const [], this.credits = const [], this.severity, this.cvss_vector_string, this.start_private_fork = false,
         }
    );

    factory Repository-advisory-create.fromJson(Map<String, dynamic>
        json) {
        return Repository-advisory-create(
            summary: json['summary'] as String ,
            description: json['description'] as String ,
            cve_id: json['cve_id'] as String? ,
            vulnerabilities: (json['vulnerabilities'] as List).map<Repository-advisory-createVulnerabilitiesInner>((e) => Repository-advisory-createVulnerabilitiesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            cwe_ids: (json['cwe_ids'] as List?)?.cast<String>() ,
            credits: (json['credits'] as List?)?.map<Repository-advisory-createCreditsInner>((e) => Repository-advisory-createCreditsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            severity: Repository-advisory-createSeverity.maybeFromJson(json['severity'] as String?) ,
            cvss_vector_string: json['cvss_vector_string'] as String? ,
            start_private_fork: (json['start_private_fork'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisory-create? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisory-create.fromJson(json);
    }

    final String  summary;
    final String  description;
    final  String? cve_id;
    final List<Repository-advisory-createVulnerabilitiesInner>  vulnerabilities;
    final  List<String>? cwe_ids;
    final  List<Repository-advisory-createCreditsInner>? credits;
    final  Repository-advisory-createSeverity? severity;
    final  String? cvss_vector_string;
    final  bool? start_private_fork;


    Map<String, dynamic> toJson() {
        return {
            'summary': summary,
            'description': description,
            'cve_id': cve_id,
            'vulnerabilities': vulnerabilities.map((e) => e.toJson()).toList(),
            'cwe_ids': cwe_ids,
            'credits': credits?.map((e) => e.toJson()).toList(),
            'severity': severity?.toJson(),
            'cvss_vector_string': cvss_vector_string,
            'start_private_fork': start_private_fork,
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
          start_private_fork,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-advisory-create
            && summary == other.summary
            && description == other.description
            && cve_id == other.cve_id
            && listsEqual(vulnerabilities, other.vulnerabilities)
            && listsEqual(cwe_ids, other.cwe_ids)
            && listsEqual(credits, other.credits)
            && severity == other.severity
            && cvss_vector_string == other.cvss_vector_string
            && start_private_fork == other.start_private_fork
        ;
    }
}
