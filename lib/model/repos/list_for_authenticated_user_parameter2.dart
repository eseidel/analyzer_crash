import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/list_for_authenticated_user_parameter2.dart';
import 'package:github/model/repos/list_for_authenticated_user_parameter2.dart';
enum Repos&#x2F;listForAuthenticatedUserParameter2 {
    all._('all'),
    owner._('owner'),
    public._('public'),
    private._('private'),
    member._('member'),
    ;

    const Repos&#x2F;listForAuthenticatedUserParameter2._(this.value);

    factory Repos&#x2F;listForAuthenticatedUserParameter2.fromJson(String json) {
        return Repos&#x2F;listForAuthenticatedUserParameter2.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;listForAuthenticatedUserParameter2 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;listForAuthenticatedUserParameter2? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;listForAuthenticatedUserParameter2.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
