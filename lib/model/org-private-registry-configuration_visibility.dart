import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-private-registry-configuration_visibility.dart';
import 'package:github/model/org-private-registry-configuration_visibility.dart';
enum Org-private-registry-configurationVisibility {
    all._('all'),
    private._('private'),
    selected._('selected'),
    ;

    const Org-private-registry-configurationVisibility._(this.value);

    factory Org-private-registry-configurationVisibility.fromJson(String json) {
        return Org-private-registry-configurationVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Org-private-registry-configurationVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-private-registry-configurationVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Org-private-registry-configurationVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
