import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/review-comment_side.dart';
import 'package:github/model/review-comment_side.dart';
enum Review-commentSide {
    left._('LEFT'),
    right._('RIGHT'),
    ;

    const Review-commentSide._(this.value);

    factory Review-commentSide.fromJson(String json) {
        return Review-commentSide.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Review-commentSide value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Review-commentSide? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Review-commentSide.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
