import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_environments.dart';
enum App-permissionsEnvironments {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsEnvironments._(this.value);

    factory App-permissionsEnvironments.fromJson(String json) {
        return App-permissionsEnvironments.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsEnvironments value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsEnvironments? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsEnvironments.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
