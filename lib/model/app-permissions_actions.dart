import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_actions.dart';
enum App-permissionsActions {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsActions._(this.value);

    factory App-permissionsActions.fromJson(String json) {
        return App-permissionsActions.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsActions value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsActions? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsActions.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
