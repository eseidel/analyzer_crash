import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-milestone_state.dart';
enum Nullable-milestoneState {
    open._('open'),
    closed._('closed'),
    ;

    const Nullable-milestoneState._(this.value);

    factory Nullable-milestoneState.fromJson(String json) {
        return Nullable-milestoneState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Nullable-milestoneState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-milestoneState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Nullable-milestoneState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
