import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_workflows.dart';
enum App-permissionsWorkflows {
    write._('write'),
    ;

    const App-permissionsWorkflows._(this.value);

    factory App-permissionsWorkflows.fromJson(String json) {
        return App-permissionsWorkflows.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsWorkflows value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsWorkflows? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsWorkflows.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
