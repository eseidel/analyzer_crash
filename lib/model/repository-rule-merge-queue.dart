import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-merge-queue.dart';
import 'package:github/model/repository-rule-merge-queue_type.dart';
import 'package:github/model/repository-rule-merge-queue_parameters.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_grouping_strategy.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_merge_method.dart';
import 'package:github/model/repository-rule-merge-queue.dart';
import 'package:github/model/repository-rule-merge-queue_type.dart';
import 'package:github/model/repository-rule-merge-queue_parameters.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_grouping_strategy.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_merge_method.dart';
@immutable
class Repository-rule-merge-queue {
    Repository-rule-merge-queue(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-merge-queue.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-merge-queue(
            type: Repository-rule-merge-queueType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-merge-queueParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-merge-queue? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-merge-queue.fromJson(json);
    }

    final Repository-rule-merge-queueType  type;
    final  Repository-rule-merge-queueParameters? parameters;


    Map<String, dynamic> toJson() {
        return {
            'type': type.toJson(),
            'parameters': parameters?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          parameters,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-merge-queue
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
