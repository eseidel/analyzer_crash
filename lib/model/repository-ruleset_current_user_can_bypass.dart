import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
enum Repository-rulesetCurrentUserCanBypass {
    always._('always'),
    pullRequestsOnly._('pull_requests_only'),
    never._('never'),
    ;

    const Repository-rulesetCurrentUserCanBypass._(this.value);

    factory Repository-rulesetCurrentUserCanBypass.fromJson(String json) {
        return Repository-rulesetCurrentUserCanBypass.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rulesetCurrentUserCanBypass value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rulesetCurrentUserCanBypass? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rulesetCurrentUserCanBypass.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
