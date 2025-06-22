import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_statuses.dart';
enum App-permissionsStatuses {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsStatuses._(this.value);

    factory App-permissionsStatuses.fromJson(String json) {
        return App-permissionsStatuses.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsStatuses value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsStatuses? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsStatuses.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
