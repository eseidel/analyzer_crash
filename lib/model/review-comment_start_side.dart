import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/review-comment_start_side.dart';
import 'package:github/model/review-comment_start_side.dart';
enum Review-commentStartSide {
    left._('LEFT'),
    right._('RIGHT'),
    ;

    const Review-commentStartSide._(this.value);

    factory Review-commentStartSide.fromJson(String json) {
        return Review-commentStartSide.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Review-commentStartSide value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Review-commentStartSide? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Review-commentStartSide.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
