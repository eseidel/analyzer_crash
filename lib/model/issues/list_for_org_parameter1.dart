import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/list_for_org_parameter1.dart';
import 'package:github/model/issues/list_for_org_parameter1.dart';
enum Issues&#x2F;listForOrgParameter1 {
    assigned._('assigned'),
    created._('created'),
    mentioned._('mentioned'),
    subscribed._('subscribed'),
    repos._('repos'),
    all._('all'),
    ;

    const Issues&#x2F;listForOrgParameter1._(this.value);

    factory Issues&#x2F;listForOrgParameter1.fromJson(String json) {
        return Issues&#x2F;listForOrgParameter1.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Issues&#x2F;listForOrgParameter1 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;listForOrgParameter1? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;listForOrgParameter1.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
