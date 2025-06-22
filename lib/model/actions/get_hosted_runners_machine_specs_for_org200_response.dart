import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/get_hosted_runners_machine_specs_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions/get_hosted_runners_machine_specs_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
@immutable
class Actions&#x2F;getHostedRunnersMachineSpecsForOrg200Response {
    Actions&#x2F;getHostedRunnersMachineSpecsForOrg200Response(
        { required this.total_count, this.machine_specs = const [],
         }
    );

    factory Actions&#x2F;getHostedRunnersMachineSpecsForOrg200Response.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;getHostedRunnersMachineSpecsForOrg200Response(
            total_count: (json['total_count'] as int).toInt() ,
            machine_specs: (json['machine_specs'] as List).map<Actions-hosted-runner-machine-spec>((e) => Actions-hosted-runner-machine-spec.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;getHostedRunnersMachineSpecsForOrg200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;getHostedRunnersMachineSpecsForOrg200Response.fromJson(json);
    }

    final int  total_count;
    final List<Actions-hosted-runner-machine-spec>  machine_specs;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'machine_specs': machine_specs.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          machine_specs,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;getHostedRunnersMachineSpecsForOrg200Response
            && total_count == other.total_count
            && listsEqual(machine_specs, other.machine_specs)
        ;
    }
}
