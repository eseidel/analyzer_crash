import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
enum App-permissionsRepositoryCustomProperties {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsRepositoryCustomProperties._(this.value);

    factory App-permissionsRepositoryCustomProperties.fromJson(String json) {
        return App-permissionsRepositoryCustomProperties.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsRepositoryCustomProperties value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsRepositoryCustomProperties? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsRepositoryCustomProperties.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
