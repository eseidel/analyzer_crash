import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/api-insights-actor-type.dart';
import 'package:github/model/api-insights-actor-type.dart';
enum Api-insights-actor-type {
    installation._('installation'),
    classicPat._('classic_pat'),
    fineGrainedPat._('fine_grained_pat'),
    oauthApp._('oauth_app'),
    githubAppUserToServer._('github_app_user_to_server'),
    ;

    const Api-insights-actor-type._(this.value);

    factory Api-insights-actor-type.fromJson(String json) {
        return Api-insights-actor-type.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Api-insights-actor-type value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Api-insights-actor-type? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Api-insights-actor-type.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
