import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions_runner_labels_readonly_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions_runner_labels_readonly_response.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
@immutable
class ActionsRunnerLabelsReadonlyResponse {
    ActionsRunnerLabelsReadonlyResponse(
        { required this.total_count, this.labels = const [],
         }
    );

    factory ActionsRunnerLabelsReadonlyResponse.fromJson(Map<String, dynamic>
        json) {
        return ActionsRunnerLabelsReadonlyResponse(
            total_count: (json['total_count'] as int).toInt() ,
            labels: (json['labels'] as List).map<Runner-label>((e) => Runner-label.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static ActionsRunnerLabelsReadonlyResponse? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return ActionsRunnerLabelsReadonlyResponse.fromJson(json);
    }

    final int  total_count;
    final List<Runner-label>  labels;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'labels': labels.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          labels,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is ActionsRunnerLabelsReadonlyResponse
            && total_count == other.total_count
            && listsEqual(labels, other.labels)
        ;
    }
}
