import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/create_request_permission.dart';
import 'package:github/model/teams/create_request_permission.dart';
enum Teams&#x2F;createRequestPermission {
    pull._('pull'),
    push._('push'),
    ;

    const Teams&#x2F;createRequestPermission._(this.value);

    factory Teams&#x2F;createRequestPermission.fromJson(String json) {
        return Teams&#x2F;createRequestPermission.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Teams&#x2F;createRequestPermission value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;createRequestPermission? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;createRequestPermission.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
