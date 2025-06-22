import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/nullable-integration_permissions.dart';
@immutable
class Nullable-integrationPermissions {
    Nullable-integrationPermissions(
        {  this.issues, this.checks, this.metadata, this.contents, this.deployments,
        required this.entries, }
    );

    factory Nullable-integrationPermissions.fromJson(Map<String, dynamic>
        json) {
        return Nullable-integrationPermissions(
            issues: json['issues'] as String? ,
            checks: json['checks'] as String? ,
            metadata: json['metadata'] as String? ,
            contents: json['contents'] as String? ,
            deployments: json['deployments'] as String? ,
            entries: json.map((key, value) => MapEntry(key, value as String )),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-integrationPermissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Nullable-integrationPermissions.fromJson(json);
    }

    final  String? issues;
    final  String? checks;
    final  String? metadata;
    final  String? contents;
    final  String? deployments;

    final Map<String, String> entries;

    String? operator [](String key) => entries[key];

    Map<String, dynamic> toJson() {
        return {
            'issues': issues,
            'checks': checks,
            'metadata': metadata,
            'contents': contents,
            'deployments': deployments,
            ...entries.map((key, value) => MapEntry(key, value)),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          issues,
          checks,
          metadata,
          contents,
          deployments,
          entries,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Nullable-integrationPermissions
            && issues == other.issues
            && checks == other.checks
            && metadata == other.metadata
            && contents == other.contents
            && deployments == other.deployments
            && mapsEqual(entries, other.entries)
        ;
    }
}
