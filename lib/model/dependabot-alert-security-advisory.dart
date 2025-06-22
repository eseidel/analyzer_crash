import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
@immutable
class Dependabot-alert-security-advisory {
    Dependabot-alert-security-advisory(
        { required this.ghsa_id,required this.cve_id,required this.summary,required this.description, this.vulnerabilities = const [],required this.severity,required this.cvss, this.cvss_severities, this.epss, this.cwes = const [], this.identifiers = const [], this.references = const [],required this.published_at,required this.updated_at,required this.withdrawn_at,
         }
    );

    factory Dependabot-alert-security-advisory.fromJson(Map<String, dynamic>
        json) {
        return Dependabot-alert-security-advisory(
            ghsa_id: json['ghsa_id'] as String ,
            cve_id: json['cve_id'] as String ,
            summary: json['summary'] as String ,
            description: json['description'] as String ,
            vulnerabilities: (json['vulnerabilities'] as List).map<Dependabot-alert-security-vulnerability>((e) => Dependabot-alert-security-vulnerability.fromJson(e as Map<String, dynamic>) ).toList() ,
            severity: Dependabot-alert-security-advisorySeverity.fromJson(json['severity'] as String) ,
            cvss: Dependabot-alert-security-advisoryCvss.fromJson(json['cvss'] as Map<String, dynamic>) ,
            cvss_severities: Cvss-severities.maybeFromJson(json['cvss_severities'] as Map<String, dynamic>?) ,
            epss: Security-advisory-epss.maybeFromJson(json['epss'] as Map<String, dynamic>?) ,
            cwes: (json['cwes'] as List).map<Dependabot-alert-security-advisoryCwesInner>((e) => Dependabot-alert-security-advisoryCwesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            identifiers: (json['identifiers'] as List).map<Dependabot-alert-security-advisoryIdentifiersInner>((e) => Dependabot-alert-security-advisoryIdentifiersInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            references: (json['references'] as List).map<Dependabot-alert-security-advisoryReferencesInner>((e) => Dependabot-alert-security-advisoryReferencesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            published_at: DateTime.parse(json['published_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            withdrawn_at: DateTime.parse(json['withdrawn_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-security-advisory? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-security-advisory.fromJson(json);
    }

    final String  ghsa_id;
    final String  cve_id;
    final String  summary;
    final String  description;
    final List<Dependabot-alert-security-vulnerability>  vulnerabilities;
    final Dependabot-alert-security-advisorySeverity  severity;
    final Dependabot-alert-security-advisoryCvss  cvss;
    final  Cvss-severities? cvss_severities;
    final  Security-advisory-epss? epss;
    final List<Dependabot-alert-security-advisoryCwesInner>  cwes;
    final List<Dependabot-alert-security-advisoryIdentifiersInner>  identifiers;
    final List<Dependabot-alert-security-advisoryReferencesInner>  references;
    final DateTime  published_at;
    final DateTime  updated_at;
    final DateTime  withdrawn_at;


    Map<String, dynamic> toJson() {
        return {
            'ghsa_id': ghsa_id,
            'cve_id': cve_id,
            'summary': summary,
            'description': description,
            'vulnerabilities': vulnerabilities.map((e) => e.toJson()).toList(),
            'severity': severity.toJson(),
            'cvss': cvss.toJson(),
            'cvss_severities': cvss_severities?.toJson(),
            'epss': epss?.toJson(),
            'cwes': cwes.map((e) => e.toJson()).toList(),
            'identifiers': identifiers.map((e) => e.toJson()).toList(),
            'references': references.map((e) => e.toJson()).toList(),
            'published_at': published_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'withdrawn_at': withdrawn_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ghsa_id,
          cve_id,
          summary,
          description,
          vulnerabilities,
          severity,
          cvss,
          cvss_severities,
          epss,
          cwes,
          identifiers,
          references,
          published_at,
          updated_at,
          withdrawn_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot-alert-security-advisory
            && ghsa_id == other.ghsa_id
            && cve_id == other.cve_id
            && summary == other.summary
            && description == other.description
            && listsEqual(vulnerabilities, other.vulnerabilities)
            && severity == other.severity
            && cvss == other.cvss
            && cvss_severities == other.cvss_severities
            && epss == other.epss
            && listsEqual(cwes, other.cwes)
            && listsEqual(identifiers, other.identifiers)
            && listsEqual(references, other.references)
            && published_at == other.published_at
            && updated_at == other.updated_at
            && withdrawn_at == other.withdrawn_at
        ;
    }
}
