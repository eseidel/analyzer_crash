import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/add_custom_labels_to_self_hosted_runner_for_org_request.dart';
import 'package:github/model/actions/add_custom_labels_to_self_hosted_runner_for_org_request.dart';
@immutable
class Actions&#x2F;addCustomLabelsToSelfHostedRunnerForOrgRequest {
    Actions&#x2F;addCustomLabelsToSelfHostedRunnerForOrgRequest(
        {  this.labels = const [],
         }
    );

    factory Actions&#x2F;addCustomLabelsToSelfHostedRunnerForOrgRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;addCustomLabelsToSelfHostedRunnerForOrgRequest(
            labels: (json['labels'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;addCustomLabelsToSelfHostedRunnerForOrgRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;addCustomLabelsToSelfHostedRunnerForOrgRequest.fromJson(json);
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
        return other is Actions&#x2F;addCustomLabelsToSelfHostedRunnerForOrgRequest
            && listsEqual(labels, other.labels)
        ;
    }
}
