import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/update_request_state_reason.dart';
import 'package:github/model/issues/update_request_state_reason.dart';
enum Issues&#x2F;updateRequestStateReason {
    completed._('completed'),
    notPlanned._('not_planned'),
    reopened._('reopened'),
    ;

    const Issues&#x2F;updateRequestStateReason._(this.value);

    factory Issues&#x2F;updateRequestStateReason.fromJson(String json) {
        return Issues&#x2F;updateRequestStateReason.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Issues&#x2F;updateRequestStateReason value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;updateRequestStateReason? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;updateRequestStateReason.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
