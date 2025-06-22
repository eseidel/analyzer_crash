import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/create_self_hosted_runner_group_for_org_request_visibility.dart';
import 'package:github/model/actions/create_self_hosted_runner_group_for_org_request_visibility.dart';
enum Actions&#x2F;createSelfHostedRunnerGroupForOrgRequestVisibility {
    selected._('selected'),
    all._('all'),
    private._('private'),
    ;

    const Actions&#x2F;createSelfHostedRunnerGroupForOrgRequestVisibility._(this.value);

    factory Actions&#x2F;createSelfHostedRunnerGroupForOrgRequestVisibility.fromJson(String json) {
        return Actions&#x2F;createSelfHostedRunnerGroupForOrgRequestVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Actions&#x2F;createSelfHostedRunnerGroupForOrgRequestVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;createSelfHostedRunnerGroupForOrgRequestVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;createSelfHostedRunnerGroupForOrgRequestVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
