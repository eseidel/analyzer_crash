import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/list_for_org_parameter5.dart';
import 'package:github/model/issues/list_for_org_parameter5.dart';
enum Issues&#x2F;listForOrgParameter5 {
    created._('created'),
    updated._('updated'),
    comments._('comments'),
    ;

    const Issues&#x2F;listForOrgParameter5._(this.value);

    factory Issues&#x2F;listForOrgParameter5.fromJson(String json) {
        return Issues&#x2F;listForOrgParameter5.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Issues&#x2F;listForOrgParameter5 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;listForOrgParameter5? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;listForOrgParameter5.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
