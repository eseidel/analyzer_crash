import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-pull-request_parameters_allowed_merge_methods_inner.dart';
import 'package:github/model/repository-rule-pull-request_parameters_allowed_merge_methods_inner.dart';
enum Repository-rule-pull-requestParametersAllowedMergeMethodsInner {
    merge._('merge'),
    squash._('squash'),
    rebase._('rebase'),
    ;

    const Repository-rule-pull-requestParametersAllowedMergeMethodsInner._(this.value);

    factory Repository-rule-pull-requestParametersAllowedMergeMethodsInner.fromJson(String json) {
        return Repository-rule-pull-requestParametersAllowedMergeMethodsInner.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-pull-requestParametersAllowedMergeMethodsInner value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-pull-requestParametersAllowedMergeMethodsInner? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-pull-requestParametersAllowedMergeMethodsInner.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
