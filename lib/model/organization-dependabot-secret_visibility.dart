import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-dependabot-secret_visibility.dart';
import 'package:github/model/organization-dependabot-secret_visibility.dart';
enum Organization-dependabot-secretVisibility {
    all._('all'),
    private._('private'),
    selected._('selected'),
    ;

    const Organization-dependabot-secretVisibility._(this.value);

    factory Organization-dependabot-secretVisibility.fromJson(String json) {
        return Organization-dependabot-secretVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Organization-dependabot-secretVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-dependabot-secretVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Organization-dependabot-secretVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
