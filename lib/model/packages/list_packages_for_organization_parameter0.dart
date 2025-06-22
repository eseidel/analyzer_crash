import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/packages/list_packages_for_organization_parameter0.dart';
import 'package:github/model/packages/list_packages_for_organization_parameter0.dart';
enum Packages&#x2F;listPackagesForOrganizationParameter0 {
    npm._('npm'),
    maven._('maven'),
    rubygems._('rubygems'),
    docker._('docker'),
    nuget._('nuget'),
    container._('container'),
    ;

    const Packages&#x2F;listPackagesForOrganizationParameter0._(this.value);

    factory Packages&#x2F;listPackagesForOrganizationParameter0.fromJson(String json) {
        return Packages&#x2F;listPackagesForOrganizationParameter0.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Packages&#x2F;listPackagesForOrganizationParameter0 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Packages&#x2F;listPackagesForOrganizationParameter0? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Packages&#x2F;listPackagesForOrganizationParameter0.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
