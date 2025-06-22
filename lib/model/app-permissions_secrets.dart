import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_secrets.dart';
enum App-permissionsSecrets {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsSecrets._(this.value);

    factory App-permissionsSecrets.fromJson(String json) {
        return App-permissionsSecrets.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsSecrets value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsSecrets? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsSecrets.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
