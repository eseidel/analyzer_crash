import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
enum Pull-request-review-commentSide {
    left._('LEFT'),
    right._('RIGHT'),
    ;

    const Pull-request-review-commentSide._(this.value);

    factory Pull-request-review-commentSide.fromJson(String json) {
        return Pull-request-review-commentSide.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pull-request-review-commentSide value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-review-commentSide? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-review-commentSide.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
