import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-seat-details_plan_type.dart';
import 'package:github/model/copilot-seat-details_plan_type.dart';
enum Copilot-seat-detailsPlanType {
    business._('business'),
    enterprise._('enterprise'),
    unknown._('unknown'),
    ;

    const Copilot-seat-detailsPlanType._(this.value);

    factory Copilot-seat-detailsPlanType.fromJson(String json) {
        return Copilot-seat-detailsPlanType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Copilot-seat-detailsPlanType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-seat-detailsPlanType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Copilot-seat-detailsPlanType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
