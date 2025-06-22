import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git/create_blob422_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/repository-rule-violation-error.dart';
import 'package:github/model/repository-rule-violation-error_metadata.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
import 'package:github/model/git/create_blob422_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/repository-rule-violation-error.dart';
import 'package:github/model/repository-rule-violation-error_metadata.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';

sealed class Git&#x2F;createBlob422Response {
    static Git&#x2F;createBlob422Response fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Git&#x2F;createBlob422Response.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git&#x2F;createBlob422Response? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Git&#x2F;createBlob422Response.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
