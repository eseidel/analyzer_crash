import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
enum App-permissionsInteractionLimits {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsInteractionLimits._(this.value);

    factory App-permissionsInteractionLimits.fromJson(String json) {
        return App-permissionsInteractionLimits.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsInteractionLimits value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsInteractionLimits? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsInteractionLimits.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
