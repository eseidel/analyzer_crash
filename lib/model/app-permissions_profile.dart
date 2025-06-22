import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_profile.dart';
enum App-permissionsProfile {
    write._('write'),
    ;

    const App-permissionsProfile._(this.value);

    factory App-permissionsProfile.fromJson(String json) {
        return App-permissionsProfile.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsProfile value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsProfile? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsProfile.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
