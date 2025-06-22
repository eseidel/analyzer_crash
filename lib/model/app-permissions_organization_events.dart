import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_events.dart';
enum App-permissionsOrganizationEvents {
    read._('read'),
    ;

    const App-permissionsOrganizationEvents._(this.value);

    factory App-permissionsOrganizationEvents.fromJson(String json) {
        return App-permissionsOrganizationEvents.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationEvents value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationEvents? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationEvents.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
