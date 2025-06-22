import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/page-deployment_id.dart';
import 'package:github/model/page-deployment_id.dart';

sealed class Page-deploymentId {
    static Page-deploymentId fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Page-deploymentId.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Page-deploymentId? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Page-deploymentId.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
