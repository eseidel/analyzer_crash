import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/checks/create_request_status.dart';
import 'package:github/model/checks/create_request_status.dart';
enum Checks&#x2F;createRequestStatus {
    queued._('queued'),
    inProgress._('in_progress'),
    ;

    const Checks&#x2F;createRequestStatus._(this.value);

    factory Checks&#x2F;createRequestStatus.fromJson(String json) {
        return Checks&#x2F;createRequestStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Checks&#x2F;createRequestStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Checks&#x2F;createRequestStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Checks&#x2F;createRequestStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
