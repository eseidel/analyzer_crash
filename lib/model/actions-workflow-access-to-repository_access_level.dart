import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-workflow-access-to-repository_access_level.dart';
import 'package:github/model/actions-workflow-access-to-repository_access_level.dart';
enum Actions-workflow-access-to-repositoryAccessLevel {
    none._('none'),
    user._('user'),
    organization._('organization'),
    ;

    const Actions-workflow-access-to-repositoryAccessLevel._(this.value);

    factory Actions-workflow-access-to-repositoryAccessLevel.fromJson(String json) {
        return Actions-workflow-access-to-repositoryAccessLevel.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Actions-workflow-access-to-repositoryAccessLevel value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-workflow-access-to-repositoryAccessLevel? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Actions-workflow-access-to-repositoryAccessLevel.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
