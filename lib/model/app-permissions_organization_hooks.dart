import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
enum App-permissionsOrganizationHooks {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsOrganizationHooks._(this.value);

    factory App-permissionsOrganizationHooks.fromJson(String json) {
        return App-permissionsOrganizationHooks.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationHooks value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationHooks? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationHooks.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
