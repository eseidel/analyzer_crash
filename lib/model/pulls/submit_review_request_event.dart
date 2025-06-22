import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/submit_review_request_event.dart';
import 'package:github/model/pulls/submit_review_request_event.dart';
enum Pulls&#x2F;submitReviewRequestEvent {
    approve._('APPROVE'),
    requestChanges._('REQUEST_CHANGES'),
    comment._('COMMENT'),
    ;

    const Pulls&#x2F;submitReviewRequestEvent._(this.value);

    factory Pulls&#x2F;submitReviewRequestEvent.fromJson(String json) {
        return Pulls&#x2F;submitReviewRequestEvent.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pulls&#x2F;submitReviewRequestEvent value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;submitReviewRequestEvent? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;submitReviewRequestEvent.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
