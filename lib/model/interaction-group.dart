import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interaction-group.dart';
enum Interaction-group {
    existingUsers._('existing_users'),
    contributorsOnly._('contributors_only'),
    collaboratorsOnly._('collaborators_only'),
    ;

    const Interaction-group._(this.value);

    factory Interaction-group.fromJson(String json) {
        return Interaction-group.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Interaction-group value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Interaction-group? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Interaction-group.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
