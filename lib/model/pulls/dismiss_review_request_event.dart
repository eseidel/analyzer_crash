import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/dismiss_review_request_event.dart';
import 'package:github/model/pulls/dismiss_review_request_event.dart';
enum Pulls&#x2F;dismissReviewRequestEvent {
    dismiss._('DISMISS'),
    ;

    const Pulls&#x2F;dismissReviewRequestEvent._(this.value);

    factory Pulls&#x2F;dismissReviewRequestEvent.fromJson(String json) {
        return Pulls&#x2F;dismissReviewRequestEvent.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pulls&#x2F;dismissReviewRequestEvent value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;dismissReviewRequestEvent? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;dismissReviewRequestEvent.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
