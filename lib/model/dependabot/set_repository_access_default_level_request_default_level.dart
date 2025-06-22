import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot/set_repository_access_default_level_request_default_level.dart';
import 'package:github/model/dependabot/set_repository_access_default_level_request_default_level.dart';
enum Dependabot&#x2F;setRepositoryAccessDefaultLevelRequestDefaultLevel {
    public._('public'),
    internal._('internal'),
    ;

    const Dependabot&#x2F;setRepositoryAccessDefaultLevelRequestDefaultLevel._(this.value);

    factory Dependabot&#x2F;setRepositoryAccessDefaultLevelRequestDefaultLevel.fromJson(String json) {
        return Dependabot&#x2F;setRepositoryAccessDefaultLevelRequestDefaultLevel.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot&#x2F;setRepositoryAccessDefaultLevelRequestDefaultLevel value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot&#x2F;setRepositoryAccessDefaultLevelRequestDefaultLevel? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot&#x2F;setRepositoryAccessDefaultLevelRequestDefaultLevel.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
