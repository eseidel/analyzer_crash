import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
enum App-permissionsOrganizationCustomRoles {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsOrganizationCustomRoles._(this.value);

    factory App-permissionsOrganizationCustomRoles.fromJson(String json) {
        return App-permissionsOrganizationCustomRoles.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationCustomRoles value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationCustomRoles? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationCustomRoles.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
