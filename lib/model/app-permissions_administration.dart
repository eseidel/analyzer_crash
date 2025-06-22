import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_administration.dart';
enum App-permissionsAdministration {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsAdministration._(this.value);

    factory App-permissionsAdministration.fromJson(String json) {
        return App-permissionsAdministration.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsAdministration value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsAdministration? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsAdministration.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
