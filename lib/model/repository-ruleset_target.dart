import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_target.dart';
enum Repository-rulesetTarget {
    branch._('branch'),
    tag._('tag'),
    push._('push'),
    repository._('repository'),
    ;

    const Repository-rulesetTarget._(this.value);

    factory Repository-rulesetTarget.fromJson(String json) {
        return Repository-rulesetTarget.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rulesetTarget value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rulesetTarget? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rulesetTarget.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
