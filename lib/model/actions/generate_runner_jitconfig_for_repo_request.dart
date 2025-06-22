import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/generate_runner_jitconfig_for_repo_request.dart';
import 'package:github/model/actions/generate_runner_jitconfig_for_repo_request.dart';
@immutable
class Actions&#x2F;generateRunnerJitconfigForRepoRequest {
    Actions&#x2F;generateRunnerJitconfigForRepoRequest(
        { required this.name,required this.runner_group_id, this.labels = const [], this.work_folder = _work,
         }
    );

    factory Actions&#x2F;generateRunnerJitconfigForRepoRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;generateRunnerJitconfigForRepoRequest(
            name: json['name'] as String ,
            runner_group_id: (json['runner_group_id'] as int).toInt() ,
            labels: (json['labels'] as List).cast<String>() ,
            work_folder: json['work_folder'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;generateRunnerJitconfigForRepoRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;generateRunnerJitconfigForRepoRequest.fromJson(json);
    }

    final String  name;
    final int  runner_group_id;
    final List<String>  labels;
    final  String? work_folder;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'runner_group_id': runner_group_id,
            'labels': labels,
            'work_folder': work_folder,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          runner_group_id,
          labels,
          work_folder,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;generateRunnerJitconfigForRepoRequest
            && name == other.name
            && runner_group_id == other.runner_group_id
            && listsEqual(labels, other.labels)
            && work_folder == other.work_folder
        ;
    }
}
