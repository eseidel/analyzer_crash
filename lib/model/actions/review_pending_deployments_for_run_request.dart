import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/review_pending_deployments_for_run_request.dart';
import 'package:github/model/actions/review_pending_deployments_for_run_request_state.dart';
import 'package:github/model/actions/review_pending_deployments_for_run_request.dart';
import 'package:github/model/actions/review_pending_deployments_for_run_request_state.dart';
@immutable
class Actions&#x2F;reviewPendingDeploymentsForRunRequest {
    Actions&#x2F;reviewPendingDeploymentsForRunRequest(
        {  this.environment_ids = const [],required this.state,required this.comment,
         }
    );

    factory Actions&#x2F;reviewPendingDeploymentsForRunRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;reviewPendingDeploymentsForRunRequest(
            environment_ids: (json['environment_ids'] as List).cast<int>() ,
            state: Actions/reviewPendingDeploymentsForRunRequestState.fromJson(json['state'] as String) ,
            comment: json['comment'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;reviewPendingDeploymentsForRunRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;reviewPendingDeploymentsForRunRequest.fromJson(json);
    }

    final List<int>  environment_ids;
    final Actions/reviewPendingDeploymentsForRunRequestState  state;
    final String  comment;


    Map<String, dynamic> toJson() {
        return {
            'environment_ids': environment_ids,
            'state': state.toJson(),
            'comment': comment,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          environment_ids,
          state,
          comment,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;reviewPendingDeploymentsForRunRequest
            && listsEqual(environment_ids, other.environment_ids)
            && state == other.state
            && comment == other.comment
        ;
    }
}
