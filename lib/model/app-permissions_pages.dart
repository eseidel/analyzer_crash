import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pages.dart';
enum App-permissionsPages {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsPages._(this.value);

    factory App-permissionsPages.fromJson(String json) {
        return App-permissionsPages.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsPages value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsPages? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsPages.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
