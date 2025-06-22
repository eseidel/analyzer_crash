import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
enum App-permissionsOrganizationSecrets {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsOrganizationSecrets._(this.value);

    factory App-permissionsOrganizationSecrets.fromJson(String json) {
        return App-permissionsOrganizationSecrets.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationSecrets value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationSecrets? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationSecrets.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
