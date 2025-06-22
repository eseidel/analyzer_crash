import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
enum App-permissionsOrganizationUserBlocking {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsOrganizationUserBlocking._(this.value);

    factory App-permissionsOrganizationUserBlocking.fromJson(String json) {
        return App-permissionsOrganizationUserBlocking.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationUserBlocking value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationUserBlocking? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationUserBlocking.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
