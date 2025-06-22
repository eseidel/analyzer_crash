import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_issues.dart';
enum App-permissionsIssues {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsIssues._(this.value);

    factory App-permissionsIssues.fromJson(String json) {
        return App-permissionsIssues.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsIssues value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsIssues? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsIssues.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
