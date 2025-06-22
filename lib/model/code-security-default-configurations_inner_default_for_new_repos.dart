import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-default-configurations_inner_default_for_new_repos.dart';
import 'package:github/model/code-security-default-configurations_inner_default_for_new_repos.dart';
enum Code-security-default-configurationsInnerDefaultForNewRepos {
    public._('public'),
    privateAndInternal._('private_and_internal'),
    all._('all'),
    ;

    const Code-security-default-configurationsInnerDefaultForNewRepos._(this.value);

    factory Code-security-default-configurationsInnerDefaultForNewRepos.fromJson(String json) {
        return Code-security-default-configurationsInnerDefaultForNewRepos.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-default-configurationsInnerDefaultForNewRepos value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-default-configurationsInnerDefaultForNewRepos? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-default-configurationsInnerDefaultForNewRepos.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
