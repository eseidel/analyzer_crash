import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/interaction-expiry.dart';
import 'package:github/model/interaction-expiry.dart';
enum Interaction-expiry {
    oneDay._('one_day'),
    threeDays._('three_days'),
    oneWeek._('one_week'),
    oneMonth._('one_month'),
    sixMonths._('six_months'),
    ;

    const Interaction-expiry._(this.value);

    factory Interaction-expiry.fromJson(String json) {
        return Interaction-expiry.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Interaction-expiry value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Interaction-expiry? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Interaction-expiry.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
