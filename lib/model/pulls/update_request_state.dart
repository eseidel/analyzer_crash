import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/update_request_state.dart';
import 'package:github/model/pulls/update_request_state.dart';
enum Pulls&#x2F;updateRequestState {
    open._('open'),
    closed._('closed'),
    ;

    const Pulls&#x2F;updateRequestState._(this.value);

    factory Pulls&#x2F;updateRequestState.fromJson(String json) {
        return Pulls&#x2F;updateRequestState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pulls&#x2F;updateRequestState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;updateRequestState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;updateRequestState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
