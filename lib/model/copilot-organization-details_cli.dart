import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-organization-details_cli.dart';
import 'package:github/model/copilot-organization-details_cli.dart';
enum Copilot-organization-detailsCli {
    enabled._('enabled'),
    disabled._('disabled'),
    unconfigured._('unconfigured'),
    ;

    const Copilot-organization-detailsCli._(this.value);

    factory Copilot-organization-detailsCli.fromJson(String json) {
        return Copilot-organization-detailsCli.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Copilot-organization-detailsCli value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-organization-detailsCli? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Copilot-organization-detailsCli.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
