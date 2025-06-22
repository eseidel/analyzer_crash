import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/installation-token_repository_selection.dart';
import 'package:github/model/installation-token_repository_selection.dart';
enum Installation-tokenRepositorySelection {
    all._('all'),
    selected._('selected'),
    ;

    const Installation-tokenRepositorySelection._(this.value);

    factory Installation-tokenRepositorySelection.fromJson(String json) {
        return Installation-tokenRepositorySelection.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Installation-tokenRepositorySelection value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Installation-tokenRepositorySelection? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Installation-tokenRepositorySelection.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
