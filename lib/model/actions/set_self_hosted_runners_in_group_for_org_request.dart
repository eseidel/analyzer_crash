import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/set_self_hosted_runners_in_group_for_org_request.dart';
import 'package:github/model/actions/set_self_hosted_runners_in_group_for_org_request.dart';
@immutable
class Actions&#x2F;setSelfHostedRunnersInGroupForOrgRequest {
    Actions&#x2F;setSelfHostedRunnersInGroupForOrgRequest(
        {  this.runners = const [],
         }
    );

    factory Actions&#x2F;setSelfHostedRunnersInGroupForOrgRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;setSelfHostedRunnersInGroupForOrgRequest(
            runners: (json['runners'] as List).cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;setSelfHostedRunnersInGroupForOrgRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;setSelfHostedRunnersInGroupForOrgRequest.fromJson(json);
    }

    final List<int>  runners;


    Map<String, dynamic> toJson() {
        return {
            'runners': runners,
        };
    }

    @override
    int get hashCode =>
          runners.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;setSelfHostedRunnersInGroupForOrgRequest
            && listsEqual(runners, other.runners)
        ;
    }
}
