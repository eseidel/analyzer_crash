import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/package-version_metadata.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_docker.dart';
@immutable
class Package-versionMetadata {
    Package-versionMetadata(
        { required this.package_type, this.container, this.docker,
         }
    );

    factory Package-versionMetadata.fromJson(Map<String, dynamic>
        json) {
        return Package-versionMetadata(
            package_type: Package-versionMetadataPackageType.fromJson(json['package_type'] as String) ,
            container: Package-versionMetadataContainer.maybeFromJson(json['container'] as Map<String, dynamic>?) ,
            docker: Package-versionMetadataDocker.maybeFromJson(json['docker'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Package-versionMetadata? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Package-versionMetadata.fromJson(json);
    }

    final Package-versionMetadataPackageType  package_type;
    final  Package-versionMetadataContainer? container;
    final  Package-versionMetadataDocker? docker;


    Map<String, dynamic> toJson() {
        return {
            'package_type': package_type.toJson(),
            'container': container?.toJson(),
            'docker': docker?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          package_type,
          container,
          docker,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Package-versionMetadata
            && package_type == other.package_type
            && container == other.container
            && docker == other.docker
        ;
    }
}
