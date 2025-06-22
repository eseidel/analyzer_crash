import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/list_for_authenticated_user_parameter0.dart';
import 'package:github/model/repos/list_for_authenticated_user_parameter0.dart';
enum Repos&#x2F;listForAuthenticatedUserParameter0 {
    all._('all'),
    public._('public'),
    private._('private'),
    ;

    const Repos&#x2F;listForAuthenticatedUserParameter0._(this.value);

    factory Repos&#x2F;listForAuthenticatedUserParameter0.fromJson(String json) {
        return Repos&#x2F;listForAuthenticatedUserParameter0.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;listForAuthenticatedUserParameter0 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;listForAuthenticatedUserParameter0? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;listForAuthenticatedUserParameter0.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
