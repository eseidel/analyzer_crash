import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_grouping_strategy.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_grouping_strategy.dart';
enum Repository-rule-merge-queueParametersGroupingStrategy {
    allgreen._('ALLGREEN'),
    headgreen._('HEADGREEN'),
    ;

    const Repository-rule-merge-queueParametersGroupingStrategy._(this.value);

    factory Repository-rule-merge-queueParametersGroupingStrategy.fromJson(String json) {
        return Repository-rule-merge-queueParametersGroupingStrategy.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-merge-queueParametersGroupingStrategy value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-merge-queueParametersGroupingStrategy? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-merge-queueParametersGroupingStrategy.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
