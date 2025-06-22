import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/allowed-actions.dart';
enum Allowed-actions {
    all._('all'),
    localOnly._('local_only'),
    selected._('selected'),
    ;

    const Allowed-actions._(this.value);

    factory Allowed-actions.fromJson(String json) {
        return Allowed-actions.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Allowed-actions value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Allowed-actions? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Allowed-actions.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
