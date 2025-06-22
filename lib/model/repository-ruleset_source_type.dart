import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
enum Repository-rulesetSourceType {
    repository._('Repository'),
    organization._('Organization'),
    enterprise._('Enterprise'),
    ;

    const Repository-rulesetSourceType._(this.value);

    factory Repository-rulesetSourceType.fromJson(String json) {
        return Repository-rulesetSourceType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rulesetSourceType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rulesetSourceType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rulesetSourceType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
