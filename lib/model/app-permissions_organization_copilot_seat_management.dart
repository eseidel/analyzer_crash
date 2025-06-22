import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
enum App-permissionsOrganizationCopilotSeatManagement {
    write._('write'),
    ;

    const App-permissionsOrganizationCopilotSeatManagement._(this.value);

    factory App-permissionsOrganizationCopilotSeatManagement.fromJson(String json) {
        return App-permissionsOrganizationCopilotSeatManagement.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationCopilotSeatManagement value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationCopilotSeatManagement? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationCopilotSeatManagement.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
