import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
enum App-permissionsOrganizationPersonalAccessTokenRequests {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsOrganizationPersonalAccessTokenRequests._(this.value);

    factory App-permissionsOrganizationPersonalAccessTokenRequests.fromJson(String json) {
        return App-permissionsOrganizationPersonalAccessTokenRequests.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationPersonalAccessTokenRequests value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationPersonalAccessTokenRequests? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationPersonalAccessTokenRequests.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
