import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_repo_ruleset_request_target.dart';
import 'package:github/model/repos/update_repo_ruleset_request_target.dart';
enum Repos&#x2F;updateRepoRulesetRequestTarget {
    branch._('branch'),
    tag._('tag'),
    push._('push'),
    ;

    const Repos&#x2F;updateRepoRulesetRequestTarget._(this.value);

    factory Repos&#x2F;updateRepoRulesetRequestTarget.fromJson(String json) {
        return Repos&#x2F;updateRepoRulesetRequestTarget.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;updateRepoRulesetRequestTarget value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateRepoRulesetRequestTarget? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateRepoRulesetRequestTarget.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
