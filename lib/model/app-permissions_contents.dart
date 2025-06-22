import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_contents.dart';
enum App-permissionsContents {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsContents._(this.value);

    factory App-permissionsContents.fromJson(String json) {
        return App-permissionsContents.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsContents value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsContents? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsContents.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
