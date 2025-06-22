import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/auto-merge_merge_method.dart';
enum Auto-mergeMergeMethod {
    merge._('merge'),
    squash._('squash'),
    rebase._('rebase'),
    ;

    const Auto-mergeMergeMethod._(this.value);

    factory Auto-mergeMergeMethod.fromJson(String json) {
        return Auto-mergeMergeMethod.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Auto-mergeMergeMethod value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Auto-mergeMergeMethod? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Auto-mergeMergeMethod.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
