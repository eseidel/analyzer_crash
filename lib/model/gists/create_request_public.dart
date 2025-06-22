import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gists/create_request_public.dart';
import 'package:github/model/gists/create_request_public.dart';
enum Gists&#x2F;createRequestPublic {
    true._('true'),
    false._('false'),
    ;

    const Gists&#x2F;createRequestPublic._(this.value);

    factory Gists&#x2F;createRequestPublic.fromJson(String json) {
        return Gists&#x2F;createRequestPublic.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Gists&#x2F;createRequestPublic value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gists&#x2F;createRequestPublic? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Gists&#x2F;createRequestPublic.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
