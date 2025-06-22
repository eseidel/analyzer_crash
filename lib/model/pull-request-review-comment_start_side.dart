import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
enum Pull-request-review-commentStartSide {
    left._('LEFT'),
    right._('RIGHT'),
    ;

    const Pull-request-review-commentStartSide._(this.value);

    factory Pull-request-review-commentStartSide.fromJson(String json) {
        return Pull-request-review-commentStartSide.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pull-request-review-commentStartSide value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-review-commentStartSide? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-review-commentStartSide.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
