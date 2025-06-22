import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/merge_request_merge_method.dart';
import 'package:github/model/pulls/merge_request_merge_method.dart';
enum Pulls&#x2F;mergeRequestMergeMethod {
    merge._('merge'),
    squash._('squash'),
    rebase._('rebase'),
    ;

    const Pulls&#x2F;mergeRequestMergeMethod._(this.value);

    factory Pulls&#x2F;mergeRequestMergeMethod.fromJson(String json) {
        return Pulls&#x2F;mergeRequestMergeMethod.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pulls&#x2F;mergeRequestMergeMethod value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;mergeRequestMergeMethod? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;mergeRequestMergeMethod.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
