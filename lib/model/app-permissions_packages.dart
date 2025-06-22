import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_packages.dart';
enum App-permissionsPackages {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsPackages._(this.value);

    factory App-permissionsPackages.fromJson(String json) {
        return App-permissionsPackages.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsPackages value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsPackages? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsPackages.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
