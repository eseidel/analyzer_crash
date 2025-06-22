import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/list_github_hosted_runners_in_group_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions/list_github_hosted_runners_in_group_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
@immutable
class Actions&#x2F;listGithubHostedRunnersInGroupForOrg200Response {
    Actions&#x2F;listGithubHostedRunnersInGroupForOrg200Response(
        { required this.total_count, this.runners = const [],
         }
    );

    factory Actions&#x2F;listGithubHostedRunnersInGroupForOrg200Response.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;listGithubHostedRunnersInGroupForOrg200Response(
            total_count: (json['total_count'] as num).toDouble() ,
            runners: (json['runners'] as List).map<Actions-hosted-runner>((e) => Actions-hosted-runner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;listGithubHostedRunnersInGroupForOrg200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;listGithubHostedRunnersInGroupForOrg200Response.fromJson(json);
    }

    final double  total_count;
    final List<Actions-hosted-runner>  runners;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'runners': runners.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          runners,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;listGithubHostedRunnersInGroupForOrg200Response
            && total_count == other.total_count
            && listsEqual(runners, other.runners)
        ;
    }
}
