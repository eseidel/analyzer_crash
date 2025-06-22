import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_deployments.dart';
enum App-permissionsDeployments {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsDeployments._(this.value);

    factory App-permissionsDeployments.fromJson(String json) {
        return App-permissionsDeployments.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsDeployments value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsDeployments? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsDeployments.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
