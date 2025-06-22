import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
enum App-permissionsOrganizationProjects {
    read._('read'),
    write._('write'),
    admin._('admin'),
    ;

    const App-permissionsOrganizationProjects._(this.value);

    factory App-permissionsOrganizationProjects.fromJson(String json) {
        return App-permissionsOrganizationProjects.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationProjects value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationProjects? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationProjects.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
