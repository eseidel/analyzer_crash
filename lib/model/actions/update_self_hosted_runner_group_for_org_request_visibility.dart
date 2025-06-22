import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/update_self_hosted_runner_group_for_org_request_visibility.dart';
import 'package:github/model/actions/update_self_hosted_runner_group_for_org_request_visibility.dart';
enum Actions&#x2F;updateSelfHostedRunnerGroupForOrgRequestVisibility {
    selected._('selected'),
    all._('all'),
    private._('private'),
    ;

    const Actions&#x2F;updateSelfHostedRunnerGroupForOrgRequestVisibility._(this.value);

    factory Actions&#x2F;updateSelfHostedRunnerGroupForOrgRequestVisibility.fromJson(String json) {
        return Actions&#x2F;updateSelfHostedRunnerGroupForOrgRequestVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Actions&#x2F;updateSelfHostedRunnerGroupForOrgRequestVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;updateSelfHostedRunnerGroupForOrgRequestVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;updateSelfHostedRunnerGroupForOrgRequestVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
