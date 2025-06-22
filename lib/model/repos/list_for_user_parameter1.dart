import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/list_for_user_parameter1.dart';
import 'package:github/model/repos/list_for_user_parameter1.dart';
enum Repos&#x2F;listForUserParameter1 {
    all._('all'),
    owner._('owner'),
    member._('member'),
    ;

    const Repos&#x2F;listForUserParameter1._(this.value);

    factory Repos&#x2F;listForUserParameter1.fromJson(String json) {
        return Repos&#x2F;listForUserParameter1.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;listForUserParameter1 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;listForUserParameter1? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;listForUserParameter1.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
