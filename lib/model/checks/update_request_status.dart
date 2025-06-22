import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/checks/update_request_status.dart';
import 'package:github/model/checks/update_request_status.dart';
enum Checks&#x2F;updateRequestStatus {
    queued._('queued'),
    inProgress._('in_progress'),
    ;

    const Checks&#x2F;updateRequestStatus._(this.value);

    factory Checks&#x2F;updateRequestStatus.fromJson(String json) {
        return Checks&#x2F;updateRequestStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Checks&#x2F;updateRequestStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Checks&#x2F;updateRequestStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Checks&#x2F;updateRequestStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
