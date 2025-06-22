import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
enum App-permissionsRepositoryProjects {
    read._('read'),
    write._('write'),
    admin._('admin'),
    ;

    const App-permissionsRepositoryProjects._(this.value);

    factory App-permissionsRepositoryProjects.fromJson(String json) {
        return App-permissionsRepositoryProjects.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsRepositoryProjects value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsRepositoryProjects? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsRepositoryProjects.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
