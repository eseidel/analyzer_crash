import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/lock_request_lock_reason.dart';
import 'package:github/model/issues/lock_request_lock_reason.dart';
enum Issues&#x2F;lockRequestLockReason {
    off-topic._('off-topic'),
    too heated._('too heated'),
    resolved._('resolved'),
    spam._('spam'),
    ;

    const Issues&#x2F;lockRequestLockReason._(this.value);

    factory Issues&#x2F;lockRequestLockReason.fromJson(String json) {
        return Issues&#x2F;lockRequestLockReason.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Issues&#x2F;lockRequestLockReason value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;lockRequestLockReason? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;lockRequestLockReason.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
