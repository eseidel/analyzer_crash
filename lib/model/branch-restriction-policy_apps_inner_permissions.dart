import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
@immutable
class Branch-restriction-policyAppsInnerPermissions {
    Branch-restriction-policyAppsInnerPermissions(
        {  this.metadata, this.contents, this.issues, this.single_file,
         }
    );

    factory Branch-restriction-policyAppsInnerPermissions.fromJson(Map<String, dynamic>
        json) {
        return Branch-restriction-policyAppsInnerPermissions(
            metadata: json['metadata'] as String? ,
            contents: json['contents'] as String? ,
            issues: json['issues'] as String? ,
            single_file: json['single_file'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-restriction-policyAppsInnerPermissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-restriction-policyAppsInnerPermissions.fromJson(json);
    }

    final  String? metadata;
    final  String? contents;
    final  String? issues;
    final  String? single_file;


    Map<String, dynamic> toJson() {
        return {
            'metadata': metadata,
            'contents': contents,
            'issues': issues,
            'single_file': single_file,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          metadata,
          contents,
          issues,
          single_file,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Branch-restriction-policyAppsInnerPermissions
            && metadata == other.metadata
            && contents == other.contents
            && issues == other.issues
            && single_file == other.single_file
        ;
    }
}
