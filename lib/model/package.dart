import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/package.dart';
import 'package:github/model/package_package_type.dart';
import 'package:github/model/package_visibility.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/nullable-minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
@immutable
class Package {
    Package(
        { required this.id,required this.name,required this.package_type,required this.url,required this.html_url,required this.version_count,required this.visibility, this.owner, this.repository,required this.created_at,required this.updated_at,
         }
    );

    factory Package.fromJson(Map<String, dynamic>
        json) {
        return Package(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String ,
            package_type: PackagePackageType.fromJson(json['package_type'] as String) ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            version_count: (json['version_count'] as int).toInt() ,
            visibility: PackageVisibility.fromJson(json['visibility'] as String) ,
            owner: Nullable-simple-user.maybeFromJson(json['owner'] as Map<String, dynamic>?) ,
            repository: Nullable-minimal-repository.maybeFromJson(json['repository'] as Map<String, dynamic>?) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Package? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Package.fromJson(json);
    }

    final int  id;
    final String  name;
    final PackagePackageType  package_type;
    final String  url;
    final String  html_url;
    final int  version_count;
    final PackageVisibility  visibility;
    final  Nullable-simple-user? owner;
    final  Nullable-minimal-repository? repository;
    final DateTime  created_at;
    final DateTime  updated_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'package_type': package_type.toJson(),
            'url': url,
            'html_url': html_url,
            'version_count': version_count,
            'visibility': visibility.toJson(),
            'owner': owner?.toJson(),
            'repository': repository?.toJson(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          package_type,
          url,
          html_url,
          version_count,
          visibility,
          owner,
          repository,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Package
            && id == other.id
            && name == other.name
            && package_type == other.package_type
            && url == other.url
            && html_url == other.html_url
            && version_count == other.version_count
            && visibility == other.visibility
            && owner == other.owner
            && repository == other.repository
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
