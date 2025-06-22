import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/update_in_org_request_privacy.dart';
import 'package:github/model/teams/update_in_org_request_privacy.dart';
enum Teams&#x2F;updateInOrgRequestPrivacy {
    secret._('secret'),
    closed._('closed'),
    ;

    const Teams&#x2F;updateInOrgRequestPrivacy._(this.value);

    factory Teams&#x2F;updateInOrgRequestPrivacy.fromJson(String json) {
        return Teams&#x2F;updateInOrgRequestPrivacy.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Teams&#x2F;updateInOrgRequestPrivacy value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;updateInOrgRequestPrivacy? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;updateInOrgRequestPrivacy.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
