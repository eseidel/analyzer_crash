import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/list_forks_parameter2.dart';
import 'package:github/model/repos/list_forks_parameter2.dart';
enum Repos&#x2F;listForksParameter2 {
    newest._('newest'),
    oldest._('oldest'),
    stargazers._('stargazers'),
    watchers._('watchers'),
    ;

    const Repos&#x2F;listForksParameter2._(this.value);

    factory Repos&#x2F;listForksParameter2.fromJson(String json) {
        return Repos&#x2F;listForksParameter2.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;listForksParameter2 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;listForksParameter2? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;listForksParameter2.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
