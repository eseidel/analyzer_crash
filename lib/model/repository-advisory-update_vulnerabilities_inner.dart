import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory-update_vulnerabilities_inner.dart';
import 'package:github/model/repository-advisory-update_vulnerabilities_inner_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory-update_vulnerabilities_inner.dart';
import 'package:github/model/repository-advisory-update_vulnerabilities_inner_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
@immutable
class Repository-advisory-updateVulnerabilitiesInner {
    Repository-advisory-updateVulnerabilitiesInner(
        { required this.package, this.vulnerable_version_range, this.patched_versions, this.vulnerable_functions = const [],
         }
    );

    factory Repository-advisory-updateVulnerabilitiesInner.fromJson(Map<String, dynamic>
        json) {
        return Repository-advisory-updateVulnerabilitiesInner(
            package: Repository-advisory-updateVulnerabilitiesInnerPackage.fromJson(json['package'] as Map<String, dynamic>) ,
            vulnerable_version_range: json['vulnerable_version_range'] as String? ,
            patched_versions: json['patched_versions'] as String? ,
            vulnerable_functions: (json['vulnerable_functions'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisory-updateVulnerabilitiesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisory-updateVulnerabilitiesInner.fromJson(json);
    }

    final Repository-advisory-updateVulnerabilitiesInnerPackage  package;
    final  String? vulnerable_version_range;
    final  String? patched_versions;
    final  List<String>? vulnerable_functions;


    Map<String, dynamic> toJson() {
        return {
            'package': package.toJson(),
            'vulnerable_version_range': vulnerable_version_range,
            'patched_versions': patched_versions,
            'vulnerable_functions': vulnerable_functions,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          package,
          vulnerable_version_range,
          patched_versions,
          vulnerable_functions,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-advisory-updateVulnerabilitiesInner
            && package == other.package
            && vulnerable_version_range == other.vulnerable_version_range
            && patched_versions == other.patched_versions
            && listsEqual(vulnerable_functions, other.vulnerable_functions)
        ;
    }
}
