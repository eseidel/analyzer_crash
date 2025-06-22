import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/create_hosted_runner_for_org_request_image_source.dart';
import 'package:github/model/actions/create_hosted_runner_for_org_request_image_source.dart';
enum Actions&#x2F;createHostedRunnerForOrgRequestImageSource {
    github._('github'),
    partner._('partner'),
    custom._('custom'),
    ;

    const Actions&#x2F;createHostedRunnerForOrgRequestImageSource._(this.value);

    factory Actions&#x2F;createHostedRunnerForOrgRequestImageSource.fromJson(String json) {
        return Actions&#x2F;createHostedRunnerForOrgRequestImageSource.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Actions&#x2F;createHostedRunnerForOrgRequestImageSource value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;createHostedRunnerForOrgRequestImageSource? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;createHostedRunnerForOrgRequestImageSource.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
