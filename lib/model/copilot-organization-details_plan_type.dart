import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-organization-details_plan_type.dart';
import 'package:github/model/copilot-organization-details_plan_type.dart';
enum Copilot-organization-detailsPlanType {
    business._('business'),
    enterprise._('enterprise'),
    ;

    const Copilot-organization-detailsPlanType._(this.value);

    factory Copilot-organization-detailsPlanType.fromJson(String json) {
        return Copilot-organization-detailsPlanType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Copilot-organization-detailsPlanType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-organization-detailsPlanType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Copilot-organization-detailsPlanType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
