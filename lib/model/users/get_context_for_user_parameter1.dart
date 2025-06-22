import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/get_context_for_user_parameter1.dart';
import 'package:github/model/users/get_context_for_user_parameter1.dart';
enum Users&#x2F;getContextForUserParameter1 {
    organization._('organization'),
    repository._('repository'),
    issue._('issue'),
    pullRequest._('pull_request'),
    ;

    const Users&#x2F;getContextForUserParameter1._(this.value);

    factory Users&#x2F;getContextForUserParameter1.fromJson(String json) {
        return Users&#x2F;getContextForUserParameter1.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Users&#x2F;getContextForUserParameter1 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;getContextForUserParameter1? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;getContextForUserParameter1.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
