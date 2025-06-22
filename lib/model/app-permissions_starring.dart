import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/app-permissions_starring.dart';
enum App-permissionsStarring {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsStarring._(this.value);

    factory App-permissionsStarring.fromJson(String json) {
        return App-permissionsStarring.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsStarring value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsStarring? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsStarring.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
