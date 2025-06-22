import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/create_request_privacy.dart';
import 'package:github/model/teams/create_request_privacy.dart';
enum Teams&#x2F;createRequestPrivacy {
    secret._('secret'),
    closed._('closed'),
    ;

    const Teams&#x2F;createRequestPrivacy._(this.value);

    factory Teams&#x2F;createRequestPrivacy.fromJson(String json) {
        return Teams&#x2F;createRequestPrivacy.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Teams&#x2F;createRequestPrivacy value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;createRequestPrivacy? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;createRequestPrivacy.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
