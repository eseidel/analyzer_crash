import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_checks.dart';
enum App-permissionsChecks {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsChecks._(this.value);

    factory App-permissionsChecks.fromJson(String json) {
        return App-permissionsChecks.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsChecks value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsChecks? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsChecks.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
