import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/list_self_hosted_runner_groups_for_org200_response.dart';
import 'package:github/model/runner-groups-org.dart';
import 'package:github/model/actions/list_self_hosted_runner_groups_for_org200_response.dart';
import 'package:github/model/runner-groups-org.dart';
@immutable
class Actions&#x2F;listSelfHostedRunnerGroupsForOrg200Response {
    Actions&#x2F;listSelfHostedRunnerGroupsForOrg200Response(
        { required this.total_count, this.runner_groups = const [],
         }
    );

    factory Actions&#x2F;listSelfHostedRunnerGroupsForOrg200Response.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;listSelfHostedRunnerGroupsForOrg200Response(
            total_count: (json['total_count'] as num).toDouble() ,
            runner_groups: (json['runner_groups'] as List).map<Runner-groups-org>((e) => Runner-groups-org.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;listSelfHostedRunnerGroupsForOrg200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;listSelfHostedRunnerGroupsForOrg200Response.fromJson(json);
    }

    final double  total_count;
    final List<Runner-groups-org>  runner_groups;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'runner_groups': runner_groups.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          runner_groups,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;listSelfHostedRunnerGroupsForOrg200Response
            && total_count == other.total_count
            && listsEqual(runner_groups, other.runner_groups)
        ;
    }
}
