import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/update_pat_accesses_request_action.dart';
import 'package:github/model/orgs/update_pat_accesses_request_action.dart';
enum Orgs&#x2F;updatePatAccessesRequestAction {
    revoke._('revoke'),
    ;

    const Orgs&#x2F;updatePatAccessesRequestAction._(this.value);

    factory Orgs&#x2F;updatePatAccessesRequestAction.fromJson(String json) {
        return Orgs&#x2F;updatePatAccessesRequestAction.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;updatePatAccessesRequestAction value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;updatePatAccessesRequestAction? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;updatePatAccessesRequestAction.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
