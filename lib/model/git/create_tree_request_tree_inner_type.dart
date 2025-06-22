import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git/create_tree_request_tree_inner_type.dart';
import 'package:github/model/git/create_tree_request_tree_inner_type.dart';
enum Git&#x2F;createTreeRequestTreeInnerType {
    blob._('blob'),
    tree._('tree'),
    commit._('commit'),
    ;

    const Git&#x2F;createTreeRequestTreeInnerType._(this.value);

    factory Git&#x2F;createTreeRequestTreeInnerType.fromJson(String json) {
        return Git&#x2F;createTreeRequestTreeInnerType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Git&#x2F;createTreeRequestTreeInnerType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git&#x2F;createTreeRequestTreeInnerType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Git&#x2F;createTreeRequestTreeInnerType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
