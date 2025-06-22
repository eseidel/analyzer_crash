import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependency-graph-diff_inner.dart';
import 'package:github/model/dependency-graph-diff_inner_change_type.dart';
import 'package:github/model/dependency-graph-diff_inner_vulnerabilities_inner.dart';
import 'package:github/model/dependency-graph-diff_inner_scope.dart';
import 'package:github/model/dependency-graph-diff_inner.dart';
import 'package:github/model/dependency-graph-diff_inner_change_type.dart';
import 'package:github/model/dependency-graph-diff_inner_vulnerabilities_inner.dart';
import 'package:github/model/dependency-graph-diff_inner_scope.dart';
@immutable
class Dependency-graph-diffInner {
    Dependency-graph-diffInner(
        { required this.change_type,required this.manifest,required this.ecosystem,required this.name,required this.version,required this.package_url,required this.license,required this.source_repository_url, this.vulnerabilities = const [],required this.scope,
         }
    );

    factory Dependency-graph-diffInner.fromJson(Map<String, dynamic>
        json) {
        return Dependency-graph-diffInner(
            change_type: Dependency-graph-diffInnerChangeType.fromJson(json['change_type'] as String) ,
            manifest: json['manifest'] as String ,
            ecosystem: json['ecosystem'] as String ,
            name: json['name'] as String ,
            version: json['version'] as String ,
            package_url: json['package_url'] as String ,
            license: json['license'] as String ,
            source_repository_url: json['source_repository_url'] as String ,
            vulnerabilities: (json['vulnerabilities'] as List).map<Dependency-graph-diffInnerVulnerabilitiesInner>((e) => Dependency-graph-diffInnerVulnerabilitiesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            scope: Dependency-graph-diffInnerScope.fromJson(json['scope'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependency-graph-diffInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependency-graph-diffInner.fromJson(json);
    }

    final Dependency-graph-diffInnerChangeType  change_type;
    final String  manifest;
    final String  ecosystem;
    final String  name;
    final String  version;
    final String  package_url;
    final String  license;
    final String  source_repository_url;
    final List<Dependency-graph-diffInnerVulnerabilitiesInner>  vulnerabilities;
    final Dependency-graph-diffInnerScope  scope;


    Map<String, dynamic> toJson() {
        return {
            'change_type': change_type.toJson(),
            'manifest': manifest,
            'ecosystem': ecosystem,
            'name': name,
            'version': version,
            'package_url': package_url,
            'license': license,
            'source_repository_url': source_repository_url,
            'vulnerabilities': vulnerabilities.map((e) => e.toJson()).toList(),
            'scope': scope.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          change_type,
          manifest,
          ecosystem,
          name,
          version,
          package_url,
          license,
          source_repository_url,
          vulnerabilities,
          scope,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependency-graph-diffInner
            && change_type == other.change_type
            && manifest == other.manifest
            && ecosystem == other.ecosystem
            && name == other.name
            && version == other.version
            && package_url == other.package_url
            && license == other.license
            && source_repository_url == other.source_repository_url
            && listsEqual(vulnerabilities, other.vulnerabilities)
            && scope == other.scope
        ;
    }
}
