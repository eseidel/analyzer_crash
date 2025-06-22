import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory-create_vulnerabilities_inner_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/repository-advisory-create_vulnerabilities_inner_package.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
@immutable
class Repository-advisory-createVulnerabilitiesInnerPackage {
    Repository-advisory-createVulnerabilitiesInnerPackage(
        { required this.ecosystem, this.name,
         }
    );

    factory Repository-advisory-createVulnerabilitiesInnerPackage.fromJson(Map<String, dynamic>
        json) {
        return Repository-advisory-createVulnerabilitiesInnerPackage(
            ecosystem: Security-advisory-ecosystems.fromJson(json['ecosystem'] as String) ,
            name: json['name'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisory-createVulnerabilitiesInnerPackage? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisory-createVulnerabilitiesInnerPackage.fromJson(json);
    }

    final Security-advisory-ecosystems  ecosystem;
    final  String? name;


    Map<String, dynamic> toJson() {
        return {
            'ecosystem': ecosystem.toJson(),
            'name': name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ecosystem,
          name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-advisory-createVulnerabilitiesInnerPackage
            && ecosystem == other.ecosystem
            && name == other.name
        ;
    }
}
