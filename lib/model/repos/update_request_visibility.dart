import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_request_visibility.dart';
import 'package:github/model/repos/update_request_visibility.dart';
enum Repos&#x2F;updateRequestVisibility {
    public._('public'),
    private._('private'),
    ;

    const Repos&#x2F;updateRequestVisibility._(this.value);

    factory Repos&#x2F;updateRequestVisibility.fromJson(String json) {
        return Repos&#x2F;updateRequestVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;updateRequestVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateRequestVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateRequestVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
