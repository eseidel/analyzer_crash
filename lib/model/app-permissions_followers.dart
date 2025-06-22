import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_followers.dart';
enum App-permissionsFollowers {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsFollowers._(this.value);

    factory App-permissionsFollowers.fromJson(String json) {
        return App-permissionsFollowers.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsFollowers value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsFollowers? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsFollowers.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
