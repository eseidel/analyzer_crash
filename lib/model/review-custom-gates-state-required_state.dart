import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/review-custom-gates-state-required_state.dart';
import 'package:github/model/review-custom-gates-state-required_state.dart';
enum Review-custom-gates-state-requiredState {
    approved._('approved'),
    rejected._('rejected'),
    ;

    const Review-custom-gates-state-requiredState._(this.value);

    factory Review-custom-gates-state-requiredState.fromJson(String json) {
        return Review-custom-gates-state-requiredState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Review-custom-gates-state-requiredState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Review-custom-gates-state-requiredState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Review-custom-gates-state-requiredState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
