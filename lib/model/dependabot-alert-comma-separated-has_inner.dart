import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-comma-separated-has_inner.dart';
import 'package:github/model/dependabot-alert-comma-separated-has_inner.dart';
enum Dependabot-alert-comma-separated-hasInner {
    patch._('patch'),
    ;

    const Dependabot-alert-comma-separated-hasInner._(this.value);

    factory Dependabot-alert-comma-separated-hasInner.fromJson(String json) {
        return Dependabot-alert-comma-separated-hasInner.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alert-comma-separated-hasInner value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-comma-separated-hasInner? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-comma-separated-hasInner.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
