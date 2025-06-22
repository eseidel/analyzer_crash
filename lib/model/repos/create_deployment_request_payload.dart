import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_deployment_request_payload.dart';
import 'package:github/model/repos/create_deployment_request_payload.dart';

sealed class Repos&#x2F;createDeploymentRequestPayload {
    static Repos&#x2F;createDeploymentRequestPayload fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Repos&#x2F;createDeploymentRequestPayload.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createDeploymentRequestPayload? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createDeploymentRequestPayload.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
