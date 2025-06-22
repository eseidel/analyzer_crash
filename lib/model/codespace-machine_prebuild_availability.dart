import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace-machine_prebuild_availability.dart';
enum Codespace-machinePrebuildAvailability {
    none._('none'),
    ready._('ready'),
    inProgress._('in_progress'),
    ;

    const Codespace-machinePrebuildAvailability._(this.value);

    factory Codespace-machinePrebuildAvailability.fromJson(String json) {
        return Codespace-machinePrebuildAvailability.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Codespace-machinePrebuildAvailability value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespace-machinePrebuildAvailability? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Codespace-machinePrebuildAvailability.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
