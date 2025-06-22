import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/user-role-assignment_assignment.dart';
import 'package:github/model/user-role-assignment_assignment.dart';
enum User-role-assignmentAssignment {
    direct._('direct'),
    indirect._('indirect'),
    mixed._('mixed'),
    ;

    const User-role-assignmentAssignment._(this.value);

    factory User-role-assignmentAssignment.fromJson(String json) {
        return User-role-assignmentAssignment.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown User-role-assignmentAssignment value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static User-role-assignmentAssignment? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return User-role-assignmentAssignment.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
