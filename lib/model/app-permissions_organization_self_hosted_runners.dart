import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
enum App-permissionsOrganizationSelfHostedRunners {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsOrganizationSelfHostedRunners._(this.value);

    factory App-permissionsOrganizationSelfHostedRunners.fromJson(String json) {
        return App-permissionsOrganizationSelfHostedRunners.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationSelfHostedRunners value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationSelfHostedRunners? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationSelfHostedRunners.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
