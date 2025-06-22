import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
enum App-permissionsOrganizationPackages {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsOrganizationPackages._(this.value);

    factory App-permissionsOrganizationPackages.fromJson(String json) {
        return App-permissionsOrganizationPackages.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationPackages value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationPackages? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationPackages.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
