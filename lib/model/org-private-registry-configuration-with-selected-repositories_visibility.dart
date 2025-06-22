import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories_visibility.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories_visibility.dart';
enum Org-private-registry-configuration-with-selected-repositoriesVisibility {
    all._('all'),
    private._('private'),
    selected._('selected'),
    ;

    const Org-private-registry-configuration-with-selected-repositoriesVisibility._(this.value);

    factory Org-private-registry-configuration-with-selected-repositoriesVisibility.fromJson(String json) {
        return Org-private-registry-configuration-with-selected-repositoriesVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Org-private-registry-configuration-with-selected-repositoriesVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-private-registry-configuration-with-selected-repositoriesVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Org-private-registry-configuration-with-selected-repositoriesVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
