import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-merge-queue_type.dart';
import 'package:github/model/repository-rule-merge-queue_type.dart';
enum Repository-rule-merge-queueType {
    mergeQueue._('merge_queue'),
    ;

    const Repository-rule-merge-queueType._(this.value);

    factory Repository-rule-merge-queueType.fromJson(String json) {
        return Repository-rule-merge-queueType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-merge-queueType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-merge-queueType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-merge-queueType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
