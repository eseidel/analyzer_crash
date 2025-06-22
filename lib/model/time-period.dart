import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/time-period.dart';
import 'package:github/model/time-period.dart';
enum Time-period {
    hour._('hour'),
    day._('day'),
    week._('week'),
    month._('month'),
    ;

    const Time-period._(this.value);

    factory Time-period.fromJson(String json) {
        return Time-period.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Time-period value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Time-period? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Time-period.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
