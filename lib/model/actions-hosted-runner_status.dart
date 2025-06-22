import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
enum Actions-hosted-runnerStatus {
    ready._('Ready'),
    provisioning._('Provisioning'),
    shutdown._('Shutdown'),
    deleting._('Deleting'),
    stuck._('Stuck'),
    ;

    const Actions-hosted-runnerStatus._(this.value);

    factory Actions-hosted-runnerStatus.fromJson(String json) {
        return Actions-hosted-runnerStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Actions-hosted-runnerStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-hosted-runnerStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Actions-hosted-runnerStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
