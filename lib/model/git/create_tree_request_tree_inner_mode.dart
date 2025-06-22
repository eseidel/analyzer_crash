import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git/create_tree_request_tree_inner_mode.dart';
import 'package:github/model/git/create_tree_request_tree_inner_mode.dart';
enum Git&#x2F;createTreeRequestTreeInnerMode {
    100644._('100644'),
    100755._('100755'),
    040000._('040000'),
    160000._('160000'),
    120000._('120000'),
    ;

    const Git&#x2F;createTreeRequestTreeInnerMode._(this.value);

    factory Git&#x2F;createTreeRequestTreeInnerMode.fromJson(String json) {
        return Git&#x2F;createTreeRequestTreeInnerMode.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Git&#x2F;createTreeRequestTreeInnerMode value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git&#x2F;createTreeRequestTreeInnerMode? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Git&#x2F;createTreeRequestTreeInnerMode.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
