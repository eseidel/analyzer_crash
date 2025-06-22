import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/deployment-reviewer-type.dart';
enum Deployment-reviewer-type {
    user._('User'),
    team._('Team'),
    ;

    const Deployment-reviewer-type._(this.value);

    factory Deployment-reviewer-type.fromJson(String json) {
        return Deployment-reviewer-type.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Deployment-reviewer-type value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Deployment-reviewer-type? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Deployment-reviewer-type.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
