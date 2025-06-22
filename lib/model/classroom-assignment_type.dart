import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/classroom-assignment_type.dart';
import 'package:github/model/classroom-assignment_type.dart';
enum Classroom-assignmentType {
    individual._('individual'),
    group._('group'),
    ;

    const Classroom-assignmentType._(this.value);

    factory Classroom-assignmentType.fromJson(String json) {
        return Classroom-assignmentType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Classroom-assignmentType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Classroom-assignmentType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Classroom-assignmentType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
