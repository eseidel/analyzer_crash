import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_metadata.dart';
enum App-permissionsMetadata {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsMetadata._(this.value);

    factory App-permissionsMetadata.fromJson(String json) {
        return App-permissionsMetadata.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsMetadata value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsMetadata? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsMetadata.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
