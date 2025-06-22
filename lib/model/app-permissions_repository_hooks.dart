import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
enum App-permissionsRepositoryHooks {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsRepositoryHooks._(this.value);

    factory App-permissionsRepositoryHooks.fromJson(String json) {
        return App-permissionsRepositoryHooks.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsRepositoryHooks value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsRepositoryHooks? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsRepositoryHooks.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
