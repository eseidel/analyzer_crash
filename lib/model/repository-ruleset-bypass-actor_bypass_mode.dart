import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
enum Repository-ruleset-bypass-actorBypassMode {
    always._('always'),
    pullRequest._('pull_request'),
    ;

    const Repository-ruleset-bypass-actorBypassMode._(this.value);

    factory Repository-ruleset-bypass-actorBypassMode.fromJson(String json) {
        return Repository-ruleset-bypass-actorBypassMode.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-ruleset-bypass-actorBypassMode value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-ruleset-bypass-actorBypassMode? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-ruleset-bypass-actorBypassMode.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
