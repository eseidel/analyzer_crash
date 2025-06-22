import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-role-assignment_assignment.dart';
import 'package:github/model/team-role-assignment_assignment.dart';
enum Team-role-assignmentAssignment {
    direct._('direct'),
    indirect._('indirect'),
    mixed._('mixed'),
    ;

    const Team-role-assignmentAssignment._(this.value);

    factory Team-role-assignmentAssignment.fromJson(String json) {
        return Team-role-assignmentAssignment.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Team-role-assignmentAssignment value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-role-assignmentAssignment? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Team-role-assignmentAssignment.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
