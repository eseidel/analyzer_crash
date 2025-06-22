import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
enum App-permissionsOrganizationCustomProperties {
    read._('read'),
    write._('write'),
    admin._('admin'),
    ;

    const App-permissionsOrganizationCustomProperties._(this.value);

    factory App-permissionsOrganizationCustomProperties.fromJson(String json) {
        return App-permissionsOrganizationCustomProperties.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationCustomProperties value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationCustomProperties? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationCustomProperties.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
