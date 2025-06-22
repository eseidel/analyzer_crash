import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/update_in_org_request_permission.dart';
import 'package:github/model/teams/update_in_org_request_permission.dart';
enum Teams&#x2F;updateInOrgRequestPermission {
    pull._('pull'),
    push._('push'),
    admin._('admin'),
    ;

    const Teams&#x2F;updateInOrgRequestPermission._(this.value);

    factory Teams&#x2F;updateInOrgRequestPermission.fromJson(String json) {
        return Teams&#x2F;updateInOrgRequestPermission.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Teams&#x2F;updateInOrgRequestPermission value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;updateInOrgRequestPermission? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;updateInOrgRequestPermission.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
