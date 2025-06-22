import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-cache-list-sort.dart';
import 'package:github/model/actions-cache-list-sort.dart';
enum Actions-cache-list-sort {
    createdAt._('created_at'),
    lastAccessedAt._('last_accessed_at'),
    sizeInBytes._('size_in_bytes'),
    ;

    const Actions-cache-list-sort._(this.value);

    factory Actions-cache-list-sort.fromJson(String json) {
        return Actions-cache-list-sort.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Actions-cache-list-sort value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-cache-list-sort? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Actions-cache-list-sort.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
