import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/update_request_state.dart';
import 'package:github/model/issues/update_request_state.dart';
enum Issues&#x2F;updateRequestState {
    open._('open'),
    closed._('closed'),
    ;

    const Issues&#x2F;updateRequestState._(this.value);

    factory Issues&#x2F;updateRequestState.fromJson(String json) {
        return Issues&#x2F;updateRequestState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Issues&#x2F;updateRequestState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;updateRequestState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;updateRequestState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
