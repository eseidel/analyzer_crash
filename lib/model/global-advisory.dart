import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
@immutable
class Global-advisory {
    Global-advisory(
        { required this.ghsa_id,required this.cve_id,required this.url,required this.html_url,required this.repository_advisory_url,required this.summary,required this.description,required this.type,required this.severity,required this.source_code_location, this.identifiers = const [], this.references = const [],required this.published_at,required this.updated_at,required this.github_reviewed_at,required this.nvd_published_at,required this.withdrawn_at, this.vulnerabilities = const [],required this.cvss, this.cvss_severities, this.epss, this.cwes = const [], this.credits = const [],
         }
    );

    factory Global-advisory.fromJson(Map<String, dynamic>
        json) {
        return Global-advisory(
            ghsa_id: json['ghsa_id'] as String ,
            cve_id: json['cve_id'] as String ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            repository_advisory_url: json['repository_advisory_url'] as String ,
            summary: json['summary'] as String ,
            description: json['description'] as String ,
            type: Global-advisoryType.fromJson(json['type'] as String) ,
            severity: Global-advisorySeverity.fromJson(json['severity'] as String) ,
            source_code_location: json['source_code_location'] as String ,
            identifiers: (json['identifiers'] as List).map<Global-advisoryIdentifiersInner>((e) => Global-advisoryIdentifiersInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            references: (json['references'] as List).cast<String>() ,
            published_at: DateTime.parse(json['published_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            github_reviewed_at: DateTime.parse(json['github_reviewed_at'] as String),
            nvd_published_at: DateTime.parse(json['nvd_published_at'] as String),
            withdrawn_at: DateTime.parse(json['withdrawn_at'] as String),
            vulnerabilities: (json['vulnerabilities'] as List).map<Vulnerability>((e) => Vulnerability.fromJson(e as Map<String, dynamic>) ).toList() ,
            cvss: Global-advisoryCvss.fromJson(json['cvss'] as Map<String, dynamic>) ,
            cvss_severities: Cvss-severities.maybeFromJson(json['cvss_severities'] as Map<String, dynamic>?) ,
            epss: Security-advisory-epss.maybeFromJson(json['epss'] as Map<String, dynamic>?) ,
            cwes: (json['cwes'] as List).map<Global-advisoryCwesInner>((e) => Global-advisoryCwesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            credits: (json['credits'] as List).map<Global-advisoryCreditsInner>((e) => Global-advisoryCreditsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Global-advisory? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Global-advisory.fromJson(json);
    }

    final String  ghsa_id;
    final String  cve_id;
    final String  url;
    final String  html_url;
    final String  repository_advisory_url;
    final String  summary;
    final String  description;
    final Global-advisoryType  type;
    final Global-advisorySeverity  severity;
    final String  source_code_location;
    final List<Global-advisoryIdentifiersInner>  identifiers;
    final List<String>  references;
    final DateTime  published_at;
    final DateTime  updated_at;
    final DateTime  github_reviewed_at;
    final DateTime  nvd_published_at;
    final DateTime  withdrawn_at;
    final List<Vulnerability>  vulnerabilities;
    final Global-advisoryCvss  cvss;
    final  Cvss-severities? cvss_severities;
    final  Security-advisory-epss? epss;
    final List<Global-advisoryCwesInner>  cwes;
    final List<Global-advisoryCreditsInner>  credits;


    Map<String, dynamic> toJson() {
        return {
            'ghsa_id': ghsa_id,
            'cve_id': cve_id,
            'url': url,
            'html_url': html_url,
            'repository_advisory_url': repository_advisory_url,
            'summary': summary,
            'description': description,
            'type': type.toJson(),
            'severity': severity.toJson(),
            'source_code_location': source_code_location,
            'identifiers': identifiers.map((e) => e.toJson()).toList(),
            'references': references,
            'published_at': published_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'github_reviewed_at': github_reviewed_at.toIso8601String(),
            'nvd_published_at': nvd_published_at.toIso8601String(),
            'withdrawn_at': withdrawn_at.toIso8601String(),
            'vulnerabilities': vulnerabilities.map((e) => e.toJson()).toList(),
            'cvss': cvss.toJson(),
            'cvss_severities': cvss_severities?.toJson(),
            'epss': epss?.toJson(),
            'cwes': cwes.map((e) => e.toJson()).toList(),
            'credits': credits.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ghsa_id,
          cve_id,
          url,
          html_url,
          repository_advisory_url,
          summary,
          description,
          type,
          severity,
          source_code_location,
          identifiers,
          references,
          published_at,
          updated_at,
          github_reviewed_at,
          nvd_published_at,
          withdrawn_at,
          vulnerabilities,
          cvss,
          cvss_severities,
          epss,
          cwes,
          credits,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Global-advisory
            && ghsa_id == other.ghsa_id
            && cve_id == other.cve_id
            && url == other.url
            && html_url == other.html_url
            && repository_advisory_url == other.repository_advisory_url
            && summary == other.summary
            && description == other.description
            && type == other.type
            && severity == other.severity
            && source_code_location == other.source_code_location
            && listsEqual(identifiers, other.identifiers)
            && listsEqual(references, other.references)
            && published_at == other.published_at
            && updated_at == other.updated_at
            && github_reviewed_at == other.github_reviewed_at
            && nvd_published_at == other.nvd_published_at
            && withdrawn_at == other.withdrawn_at
            && listsEqual(vulnerabilities, other.vulnerabilities)
            && cvss == other.cvss
            && cvss_severities == other.cvss_severities
            && epss == other.epss
            && listsEqual(cwes, other.cwes)
            && listsEqual(credits, other.credits)
        ;
    }
}
