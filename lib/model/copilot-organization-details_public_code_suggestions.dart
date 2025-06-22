import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-organization-details_public_code_suggestions.dart';
import 'package:github/model/copilot-organization-details_public_code_suggestions.dart';
enum Copilot-organization-detailsPublicCodeSuggestions {
    allow._('allow'),
    block._('block'),
    unconfigured._('unconfigured'),
    ;

    const Copilot-organization-detailsPublicCodeSuggestions._(this.value);

    factory Copilot-organization-detailsPublicCodeSuggestions.fromJson(String json) {
        return Copilot-organization-detailsPublicCodeSuggestions.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Copilot-organization-detailsPublicCodeSuggestions value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-organization-detailsPublicCodeSuggestions? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Copilot-organization-detailsPublicCodeSuggestions.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
