import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
enum Nullable-codespace-machinePrebuildAvailability {
    none._('none'),
    ready._('ready'),
    inProgress._('in_progress'),
    ;

    const Nullable-codespace-machinePrebuildAvailability._(this.value);

    factory Nullable-codespace-machinePrebuildAvailability.fromJson(String json) {
        return Nullable-codespace-machinePrebuildAvailability.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Nullable-codespace-machinePrebuildAvailability value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-codespace-machinePrebuildAvailability? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Nullable-codespace-machinePrebuildAvailability.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
