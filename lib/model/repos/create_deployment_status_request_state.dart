import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_deployment_status_request_state.dart';
import 'package:github/model/repos/create_deployment_status_request_state.dart';
enum Repos&#x2F;createDeploymentStatusRequestState {
    error._('error'),
    failure._('failure'),
    inactive._('inactive'),
    inProgress._('in_progress'),
    queued._('queued'),
    pending._('pending'),
    success._('success'),
    ;

    const Repos&#x2F;createDeploymentStatusRequestState._(this.value);

    factory Repos&#x2F;createDeploymentStatusRequestState.fromJson(String json) {
        return Repos&#x2F;createDeploymentStatusRequestState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;createDeploymentStatusRequestState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createDeploymentStatusRequestState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createDeploymentStatusRequestState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
