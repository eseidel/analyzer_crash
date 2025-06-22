import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/simple-classroom-assignment_type.dart';
import 'package:github/model/simple-classroom-assignment_type.dart';
enum Simple-classroom-assignmentType {
    individual._('individual'),
    group._('group'),
    ;

    const Simple-classroom-assignmentType._(this.value);

    factory Simple-classroom-assignmentType.fromJson(String json) {
        return Simple-classroom-assignmentType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Simple-classroom-assignmentType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Simple-classroom-assignmentType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Simple-classroom-assignmentType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
