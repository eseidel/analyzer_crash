import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-membership_state.dart';
import 'package:github/model/team-membership_state.dart';
enum Team-membershipState {
    active._('active'),
    pending._('pending'),
    ;

    const Team-membershipState._(this.value);

    factory Team-membershipState.fromJson(String json) {
        return Team-membershipState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Team-membershipState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-membershipState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Team-membershipState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
