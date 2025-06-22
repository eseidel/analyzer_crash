import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_single_file.dart';
enum App-permissionsSingleFile {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsSingleFile._(this.value);

    factory App-permissionsSingleFile.fromJson(String json) {
        return App-permissionsSingleFile.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsSingleFile value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsSingleFile? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsSingleFile.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
