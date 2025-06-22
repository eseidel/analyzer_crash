import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-default-workflow-permissions.dart';
import 'package:github/model/actions-default-workflow-permissions.dart';
enum Actions-default-workflow-permissions {
    read._('read'),
    write._('write'),
    ;

    const Actions-default-workflow-permissions._(this.value);

    factory Actions-default-workflow-permissions.fromJson(String json) {
        return Actions-default-workflow-permissions.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Actions-default-workflow-permissions value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-default-workflow-permissions? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Actions-default-workflow-permissions.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
