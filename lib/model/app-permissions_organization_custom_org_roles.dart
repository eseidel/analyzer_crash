import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
enum App-permissionsOrganizationCustomOrgRoles {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsOrganizationCustomOrgRoles._(this.value);

    factory App-permissionsOrganizationCustomOrgRoles.fromJson(String json) {
        return App-permissionsOrganizationCustomOrgRoles.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationCustomOrgRoles value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationCustomOrgRoles? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationCustomOrgRoles.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
