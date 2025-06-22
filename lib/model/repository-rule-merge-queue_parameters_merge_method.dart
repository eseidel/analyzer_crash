import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_merge_method.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_merge_method.dart';
enum Repository-rule-merge-queueParametersMergeMethod {
    merge._('MERGE'),
    squash._('SQUASH'),
    rebase._('REBASE'),
    ;

    const Repository-rule-merge-queueParametersMergeMethod._(this.value);

    factory Repository-rule-merge-queueParametersMergeMethod.fromJson(String json) {
        return Repository-rule-merge-queueParametersMergeMethod.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-merge-queueParametersMergeMethod value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-merge-queueParametersMergeMethod? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-merge-queueParametersMergeMethod.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
