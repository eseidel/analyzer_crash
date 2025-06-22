import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/package-version.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
@immutable
class Package-version {
    Package-version(
        { required this.id,required this.name,required this.url,required this.package_html_url, this.html_url, this.license, this.description,required this.created_at,required this.updated_at, this.deleted_at, this.metadata,
         }
    );

    factory Package-version.fromJson(Map<String, dynamic>
        json) {
        return Package-version(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String ,
            url: json['url'] as String ,
            package_html_url: json['package_html_url'] as String ,
            html_url: json['html_url'] as String? ,
            license: json['license'] as String? ,
            description: json['description'] as String? ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            deleted_at: maybeParseDateTime(json['deleted_at'] as String?) ,
            metadata: Package-versionMetadata.maybeFromJson(json['metadata'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Package-version? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Package-version.fromJson(json);
    }

    final int  id;
    final String  name;
    final String  url;
    final String  package_html_url;
    final  String? html_url;
    final  String? license;
    final  String? description;
    final DateTime  created_at;
    final DateTime  updated_at;
    final  DateTime? deleted_at;
    final  Package-versionMetadata? metadata;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'url': url,
            'package_html_url': package_html_url,
            'html_url': html_url,
            'license': license,
            'description': description,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'deleted_at': deleted_at?.toIso8601String(),
            'metadata': metadata?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          url,
          package_html_url,
          html_url,
          license,
          description,
          created_at,
          updated_at,
          deleted_at,
          metadata,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Package-version
            && id == other.id
            && name == other.name
            && url == other.url
            && package_html_url == other.package_html_url
            && html_url == other.html_url
            && license == other.license
            && description == other.description
            && created_at == other.created_at
            && updated_at == other.updated_at
            && deleted_at == other.deleted_at
            && metadata == other.metadata
        ;
    }
}
