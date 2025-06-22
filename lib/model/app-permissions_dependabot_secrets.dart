import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
enum App-permissionsDependabotSecrets {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsDependabotSecrets._(this.value);

    factory App-permissionsDependabotSecrets.fromJson(String json) {
        return App-permissionsDependabotSecrets.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsDependabotSecrets value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsDependabotSecrets? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsDependabotSecrets.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
