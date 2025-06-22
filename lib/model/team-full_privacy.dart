import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_privacy.dart';
enum Team-fullPrivacy {
    closed._('closed'),
    secret._('secret'),
    ;

    const Team-fullPrivacy._(this.value);

    factory Team-fullPrivacy.fromJson(String json) {
        return Team-fullPrivacy.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Team-fullPrivacy value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-fullPrivacy? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Team-fullPrivacy.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
