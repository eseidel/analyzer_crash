import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
enum App-permissionsOrganizationPersonalAccessTokens {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsOrganizationPersonalAccessTokens._(this.value);

    factory App-permissionsOrganizationPersonalAccessTokens.fromJson(String json) {
        return App-permissionsOrganizationPersonalAccessTokens.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationPersonalAccessTokens value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationPersonalAccessTokens? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationPersonalAccessTokens.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
