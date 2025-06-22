import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
enum Repository-rule-ruleset-infoRulesetSourceType {
    repository._('Repository'),
    organization._('Organization'),
    ;

    const Repository-rule-ruleset-infoRulesetSourceType._(this.value);

    factory Repository-rule-ruleset-infoRulesetSourceType.fromJson(String json) {
        return Repository-rule-ruleset-infoRulesetSourceType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-ruleset-infoRulesetSourceType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-ruleset-infoRulesetSourceType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-ruleset-infoRulesetSourceType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
