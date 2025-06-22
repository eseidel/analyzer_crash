import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_codespaces.dart';
enum App-permissionsCodespaces {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsCodespaces._(this.value);

    factory App-permissionsCodespaces.fromJson(String json) {
        return App-permissionsCodespaces.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsCodespaces value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsCodespaces? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsCodespaces.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
