import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup_schedule.dart';
import 'package:github/model/code-scanning-default-setup_schedule.dart';
enum Code-scanning-default-setupSchedule {
    weekly._('weekly'),
    ;

    const Code-scanning-default-setupSchedule._(this.value);

    factory Code-scanning-default-setupSchedule.fromJson(String json) {
        return Code-scanning-default-setupSchedule.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-default-setupSchedule value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setupSchedule? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setupSchedule.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
