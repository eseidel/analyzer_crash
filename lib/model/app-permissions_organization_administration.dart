import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
enum App-permissionsOrganizationAdministration {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsOrganizationAdministration._(this.value);

    factory App-permissionsOrganizationAdministration.fromJson(String json) {
        return App-permissionsOrganizationAdministration.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationAdministration value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationAdministration? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationAdministration.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
