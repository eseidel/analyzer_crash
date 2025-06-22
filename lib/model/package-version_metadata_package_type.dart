import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
import 'package:github/model/package-version_metadata_package_type.dart';
enum Package-versionMetadataPackageType {
    npm._('npm'),
    maven._('maven'),
    rubygems._('rubygems'),
    docker._('docker'),
    nuget._('nuget'),
    container._('container'),
    ;

    const Package-versionMetadataPackageType._(this.value);

    factory Package-versionMetadataPackageType.fromJson(String json) {
        return Package-versionMetadataPackageType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Package-versionMetadataPackageType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Package-versionMetadataPackageType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Package-versionMetadataPackageType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
