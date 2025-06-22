import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/api-insights-sort_inner.dart';
import 'package:github/model/api-insights-sort_inner.dart';
enum Api-insights-sortInner {
    lastRateLimitedTimestamp._('last_rate_limited_timestamp'),
    lastRequestTimestamp._('last_request_timestamp'),
    rateLimitedRequestCount._('rate_limited_request_count'),
    subjectName._('subject_name'),
    totalRequestCount._('total_request_count'),
    ;

    const Api-insights-sortInner._(this.value);

    factory Api-insights-sortInner.fromJson(String json) {
        return Api-insights-sortInner.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Api-insights-sortInner value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Api-insights-sortInner? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Api-insights-sortInner.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
