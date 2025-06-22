import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-sort.dart';
import 'package:github/model/dependabot-alert-sort.dart';
enum Dependabot-alert-sort {
    created._('created'),
    updated._('updated'),
    epssPercentage._('epss_percentage'),
    ;

    const Dependabot-alert-sort._(this.value);

    factory Dependabot-alert-sort.fromJson(String json) {
        return Dependabot-alert-sort.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alert-sort value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-sort? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-sort.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
