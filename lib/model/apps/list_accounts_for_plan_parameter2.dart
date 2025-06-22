import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/apps/list_accounts_for_plan_parameter2.dart';
import 'package:github/model/apps/list_accounts_for_plan_parameter2.dart';
enum Apps&#x2F;listAccountsForPlanParameter2 {
    asc._('asc'),
    desc._('desc'),
    ;

    const Apps&#x2F;listAccountsForPlanParameter2._(this.value);

    factory Apps&#x2F;listAccountsForPlanParameter2.fromJson(String json) {
        return Apps&#x2F;listAccountsForPlanParameter2.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Apps&#x2F;listAccountsForPlanParameter2 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Apps&#x2F;listAccountsForPlanParameter2? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Apps&#x2F;listAccountsForPlanParameter2.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
