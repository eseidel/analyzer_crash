import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependency-graph-diff_inner_vulnerabilities_inner.dart';
import 'package:github/model/dependency-graph-diff_inner_vulnerabilities_inner.dart';
@immutable
class Dependency-graph-diffInnerVulnerabilitiesInner {
    Dependency-graph-diffInnerVulnerabilitiesInner(
        { required this.severity,required this.advisory_ghsa_id,required this.advisory_summary,required this.advisory_url,
         }
    );

    factory Dependency-graph-diffInnerVulnerabilitiesInner.fromJson(Map<String, dynamic>
        json) {
        return Dependency-graph-diffInnerVulnerabilitiesInner(
            severity: json['severity'] as String ,
            advisory_ghsa_id: json['advisory_ghsa_id'] as String ,
            advisory_summary: json['advisory_summary'] as String ,
            advisory_url: json['advisory_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependency-graph-diffInnerVulnerabilitiesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependency-graph-diffInnerVulnerabilitiesInner.fromJson(json);
    }

    final String  severity;
    final String  advisory_ghsa_id;
    final String  advisory_summary;
    final String  advisory_url;


    Map<String, dynamic> toJson() {
        return {
            'severity': severity,
            'advisory_ghsa_id': advisory_ghsa_id,
            'advisory_summary': advisory_summary,
            'advisory_url': advisory_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          severity,
          advisory_ghsa_id,
          advisory_summary,
          advisory_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependency-graph-diffInnerVulnerabilitiesInner
            && severity == other.severity
            && advisory_ghsa_id == other.advisory_ghsa_id
            && advisory_summary == other.advisory_summary
            && advisory_url == other.advisory_url
        ;
    }
}
