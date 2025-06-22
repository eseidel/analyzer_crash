import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/review_pat_grant_request_request_action.dart';
import 'package:github/model/orgs/review_pat_grant_request_request_action.dart';
enum Orgs&#x2F;reviewPatGrantRequestRequestAction {
    approve._('approve'),
    deny._('deny'),
    ;

    const Orgs&#x2F;reviewPatGrantRequestRequestAction._(this.value);

    factory Orgs&#x2F;reviewPatGrantRequestRequestAction.fromJson(String json) {
        return Orgs&#x2F;reviewPatGrantRequestRequestAction.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;reviewPatGrantRequestRequestAction value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;reviewPatGrantRequestRequestAction? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;reviewPatGrantRequestRequestAction.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
