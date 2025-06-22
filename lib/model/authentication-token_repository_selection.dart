import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/authentication-token_repository_selection.dart';
import 'package:github/model/authentication-token_repository_selection.dart';
enum Authentication-tokenRepositorySelection {
    all._('all'),
    selected._('selected'),
    ;

    const Authentication-tokenRepositorySelection._(this.value);

    factory Authentication-tokenRepositorySelection.fromJson(String json) {
        return Authentication-tokenRepositorySelection.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Authentication-tokenRepositorySelection value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Authentication-tokenRepositorySelection? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Authentication-tokenRepositorySelection.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
