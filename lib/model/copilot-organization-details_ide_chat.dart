import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-organization-details_ide_chat.dart';
import 'package:github/model/copilot-organization-details_ide_chat.dart';
enum Copilot-organization-detailsIdeChat {
    enabled._('enabled'),
    disabled._('disabled'),
    unconfigured._('unconfigured'),
    ;

    const Copilot-organization-detailsIdeChat._(this.value);

    factory Copilot-organization-detailsIdeChat.fromJson(String json) {
        return Copilot-organization-detailsIdeChat.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Copilot-organization-detailsIdeChat value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-organization-detailsIdeChat? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Copilot-organization-detailsIdeChat.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
