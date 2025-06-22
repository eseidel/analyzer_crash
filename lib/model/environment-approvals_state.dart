import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/environment-approvals_state.dart';
import 'package:github/model/environment-approvals_state.dart';
enum Environment-approvalsState {
    approved._('approved'),
    rejected._('rejected'),
    pending._('pending'),
    ;

    const Environment-approvalsState._(this.value);

    factory Environment-approvalsState.fromJson(String json) {
        return Environment-approvalsState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Environment-approvalsState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Environment-approvalsState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Environment-approvalsState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
