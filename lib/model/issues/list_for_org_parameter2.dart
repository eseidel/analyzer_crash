import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/list_for_org_parameter2.dart';
import 'package:github/model/issues/list_for_org_parameter2.dart';
enum Issues&#x2F;listForOrgParameter2 {
    open._('open'),
    closed._('closed'),
    all._('all'),
    ;

    const Issues&#x2F;listForOrgParameter2._(this.value);

    factory Issues&#x2F;listForOrgParameter2.fromJson(String json) {
        return Issues&#x2F;listForOrgParameter2.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Issues&#x2F;listForOrgParameter2 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;listForOrgParameter2? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;listForOrgParameter2.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
