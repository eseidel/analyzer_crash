import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/update_hosted_runner_for_org_request.dart';
import 'package:github/model/actions/update_hosted_runner_for_org_request.dart';
@immutable
class Actions&#x2F;updateHostedRunnerForOrgRequest {
    Actions&#x2F;updateHostedRunnerForOrgRequest(
        {  this.name, this.runner_group_id, this.maximum_runners, this.enable_static_ip,
         }
    );

    factory Actions&#x2F;updateHostedRunnerForOrgRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;updateHostedRunnerForOrgRequest(
            name: json['name'] as String? ,
            runner_group_id: (json['runner_group_id'] as int?).toInt() ,
            maximum_runners: (json['maximum_runners'] as int?).toInt() ,
            enable_static_ip: (json['enable_static_ip'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;updateHostedRunnerForOrgRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;updateHostedRunnerForOrgRequest.fromJson(json);
    }

    final  String? name;
    final  int? runner_group_id;
    final  int? maximum_runners;
    final  bool? enable_static_ip;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'runner_group_id': runner_group_id,
            'maximum_runners': maximum_runners,
            'enable_static_ip': enable_static_ip,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          runner_group_id,
          maximum_runners,
          enable_static_ip,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;updateHostedRunnerForOrgRequest
            && name == other.name
            && runner_group_id == other.runner_group_id
            && maximum_runners == other.maximum_runners
            && enable_static_ip == other.enable_static_ip
        ;
    }
}
