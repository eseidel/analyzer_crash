import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_state.dart';
enum Org-membershipState {
    active._('active'),
    pending._('pending'),
    ;

    const Org-membershipState._(this.value);

    factory Org-membershipState.fromJson(String json) {
        return Org-membershipState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Org-membershipState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-membershipState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Org-membershipState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
