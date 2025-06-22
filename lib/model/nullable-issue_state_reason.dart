import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-issue_state_reason.dart';
import 'package:github/model/nullable-issue_state_reason.dart';
enum Nullable-issueStateReason {
    completed._('completed'),
    reopened._('reopened'),
    notPlanned._('not_planned'),
    ;

    const Nullable-issueStateReason._(this.value);

    factory Nullable-issueStateReason.fromJson(String json) {
        return Nullable-issueStateReason.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Nullable-issueStateReason value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-issueStateReason? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Nullable-issueStateReason.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
