import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/update_org_variable_request_visibility.dart';
import 'package:github/model/actions/update_org_variable_request_visibility.dart';
enum Actions&#x2F;updateOrgVariableRequestVisibility {
    all._('all'),
    private._('private'),
    selected._('selected'),
    ;

    const Actions&#x2F;updateOrgVariableRequestVisibility._(this.value);

    factory Actions&#x2F;updateOrgVariableRequestVisibility.fromJson(String json) {
        return Actions&#x2F;updateOrgVariableRequestVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Actions&#x2F;updateOrgVariableRequestVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;updateOrgVariableRequestVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;updateOrgVariableRequestVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
