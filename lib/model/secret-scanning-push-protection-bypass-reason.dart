import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-reason.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-reason.dart';
enum Secret-scanning-push-protection-bypass-reason {
    falsePositive._('false_positive'),
    usedInTests._('used_in_tests'),
    willFixLater._('will_fix_later'),
    ;

    const Secret-scanning-push-protection-bypass-reason._(this.value);

    factory Secret-scanning-push-protection-bypass-reason.fromJson(String json) {
        return Secret-scanning-push-protection-bypass-reason.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Secret-scanning-push-protection-bypass-reason value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-push-protection-bypass-reason? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-push-protection-bypass-reason.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
