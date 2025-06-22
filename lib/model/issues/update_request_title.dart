import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/update_request_title.dart';
import 'package:github/model/issues/update_request_title.dart';

sealed class Issues&#x2F;updateRequestTitle {
    static Issues&#x2F;updateRequestTitle fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Issues&#x2F;updateRequestTitle.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;updateRequestTitle? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;updateRequestTitle.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
