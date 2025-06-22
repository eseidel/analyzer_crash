import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
enum App-permissionsOrganizationPlan {
    read._('read'),
    ;

    const App-permissionsOrganizationPlan._(this.value);

    factory App-permissionsOrganizationPlan.fromJson(String json) {
        return App-permissionsOrganizationPlan.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationPlan value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationPlan? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationPlan.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
