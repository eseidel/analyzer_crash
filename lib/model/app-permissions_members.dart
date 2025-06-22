import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_members.dart';
enum App-permissionsMembers {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsMembers._(this.value);

    factory App-permissionsMembers.fromJson(String json) {
        return App-permissionsMembers.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsMembers value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsMembers? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsMembers.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
