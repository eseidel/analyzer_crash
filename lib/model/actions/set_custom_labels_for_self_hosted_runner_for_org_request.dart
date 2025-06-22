import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/set_custom_labels_for_self_hosted_runner_for_org_request.dart';
import 'package:github/model/actions/set_custom_labels_for_self_hosted_runner_for_org_request.dart';
@immutable
class Actions&#x2F;setCustomLabelsForSelfHostedRunnerForOrgRequest {
    Actions&#x2F;setCustomLabelsForSelfHostedRunnerForOrgRequest(
        {  this.labels = const [],
         }
    );

    factory Actions&#x2F;setCustomLabelsForSelfHostedRunnerForOrgRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;setCustomLabelsForSelfHostedRunnerForOrgRequest(
            labels: (json['labels'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;setCustomLabelsForSelfHostedRunnerForOrgRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;setCustomLabelsForSelfHostedRunnerForOrgRequest.fromJson(json);
    }

    final List<String>  labels;


    Map<String, dynamic> toJson() {
        return {
            'labels': labels,
        };
    }

    @override
    int get hashCode =>
          labels.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;setCustomLabelsForSelfHostedRunnerForOrgRequest
            && listsEqual(labels, other.labels)
        ;
    }
}
