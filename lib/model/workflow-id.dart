import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-id.dart';
import 'package:github/model/workflow-id.dart';

sealed class Workflow-id {
    static Workflow-id fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Workflow-id.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-id? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Workflow-id.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
