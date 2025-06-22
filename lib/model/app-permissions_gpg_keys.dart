import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
enum App-permissionsGpgKeys {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsGpgKeys._(this.value);

    factory App-permissionsGpgKeys.fromJson(String json) {
        return App-permissionsGpgKeys.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsGpgKeys value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsGpgKeys? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsGpgKeys.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
