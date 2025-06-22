import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/update_request_milestone.dart';
import 'package:github/model/issues/update_request_milestone.dart';

sealed class Issues&#x2F;updateRequestMilestone {
    static Issues&#x2F;updateRequestMilestone fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Issues&#x2F;updateRequestMilestone.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;updateRequestMilestone? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;updateRequestMilestone.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
