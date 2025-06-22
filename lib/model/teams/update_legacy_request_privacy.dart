import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/update_legacy_request_privacy.dart';
import 'package:github/model/teams/update_legacy_request_privacy.dart';
enum Teams&#x2F;updateLegacyRequestPrivacy {
    secret._('secret'),
    closed._('closed'),
    ;

    const Teams&#x2F;updateLegacyRequestPrivacy._(this.value);

    factory Teams&#x2F;updateLegacyRequestPrivacy.fromJson(String json) {
        return Teams&#x2F;updateLegacyRequestPrivacy.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Teams&#x2F;updateLegacyRequestPrivacy value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;updateLegacyRequestPrivacy? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;updateLegacyRequestPrivacy.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
