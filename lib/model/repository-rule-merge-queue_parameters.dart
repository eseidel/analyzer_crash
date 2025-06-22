import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-merge-queue_parameters.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_grouping_strategy.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_merge_method.dart';
import 'package:github/model/repository-rule-merge-queue_parameters.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_grouping_strategy.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_merge_method.dart';
@immutable
class Repository-rule-merge-queueParameters {
    Repository-rule-merge-queueParameters(
        { required this.check_response_timeout_minutes,required this.grouping_strategy,required this.max_entries_to_build,required this.max_entries_to_merge,required this.merge_method,required this.min_entries_to_merge,required this.min_entries_to_merge_wait_minutes,
         }
    );

    factory Repository-rule-merge-queueParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-merge-queueParameters(
            check_response_timeout_minutes: (json['check_response_timeout_minutes'] as int).toInt() ,
            grouping_strategy: Repository-rule-merge-queueParametersGroupingStrategy.fromJson(json['grouping_strategy'] as String) ,
            max_entries_to_build: (json['max_entries_to_build'] as int).toInt() ,
            max_entries_to_merge: (json['max_entries_to_merge'] as int).toInt() ,
            merge_method: Repository-rule-merge-queueParametersMergeMethod.fromJson(json['merge_method'] as String) ,
            min_entries_to_merge: (json['min_entries_to_merge'] as int).toInt() ,
            min_entries_to_merge_wait_minutes: (json['min_entries_to_merge_wait_minutes'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-merge-queueParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-merge-queueParameters.fromJson(json);
    }

    final int  check_response_timeout_minutes;
    final Repository-rule-merge-queueParametersGroupingStrategy  grouping_strategy;
    final int  max_entries_to_build;
    final int  max_entries_to_merge;
    final Repository-rule-merge-queueParametersMergeMethod  merge_method;
    final int  min_entries_to_merge;
    final int  min_entries_to_merge_wait_minutes;


    Map<String, dynamic> toJson() {
        return {
            'check_response_timeout_minutes': check_response_timeout_minutes,
            'grouping_strategy': grouping_strategy.toJson(),
            'max_entries_to_build': max_entries_to_build,
            'max_entries_to_merge': max_entries_to_merge,
            'merge_method': merge_method.toJson(),
            'min_entries_to_merge': min_entries_to_merge,
            'min_entries_to_merge_wait_minutes': min_entries_to_merge_wait_minutes,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          check_response_timeout_minutes,
          grouping_strategy,
          max_entries_to_build,
          max_entries_to_merge,
          merge_method,
          min_entries_to_merge,
          min_entries_to_merge_wait_minutes,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-merge-queueParameters
            && check_response_timeout_minutes == other.check_response_timeout_minutes
            && grouping_strategy == other.grouping_strategy
            && max_entries_to_build == other.max_entries_to_build
            && max_entries_to_merge == other.max_entries_to_merge
            && merge_method == other.merge_method
            && min_entries_to_merge == other.min_entries_to_merge
            && min_entries_to_merge_wait_minutes == other.min_entries_to_merge_wait_minutes
        ;
    }
}
