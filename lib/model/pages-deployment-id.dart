import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pages-deployment-id.dart';
import 'package:github/model/pages-deployment-id.dart';

sealed class Pages-deployment-id {
    static Pages-deployment-id fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Pages-deployment-id.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pages-deployment-id? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Pages-deployment-id.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
