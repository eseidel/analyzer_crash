import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-scoped-installation_repository_selection.dart';
import 'package:github/model/nullable-scoped-installation_repository_selection.dart';
enum Nullable-scoped-installationRepositorySelection {
    all._('all'),
    selected._('selected'),
    ;

    const Nullable-scoped-installationRepositorySelection._(this.value);

    factory Nullable-scoped-installationRepositorySelection.fromJson(String json) {
        return Nullable-scoped-installationRepositorySelection.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Nullable-scoped-installationRepositorySelection value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-scoped-installationRepositorySelection? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Nullable-scoped-installationRepositorySelection.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
