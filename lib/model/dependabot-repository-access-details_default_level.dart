import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-repository-access-details_default_level.dart';
import 'package:github/model/dependabot-repository-access-details_default_level.dart';
enum Dependabot-repository-access-detailsDefaultLevel {
    public._('public'),
    internal._('internal'),
    ;

    const Dependabot-repository-access-detailsDefaultLevel._(this.value);

    factory Dependabot-repository-access-detailsDefaultLevel.fromJson(String json) {
        return Dependabot-repository-access-detailsDefaultLevel.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-repository-access-detailsDefaultLevel value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-repository-access-detailsDefaultLevel? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-repository-access-detailsDefaultLevel.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
