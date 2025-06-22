import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_or_update_file_contents409_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-rule-violation-error.dart';
import 'package:github/model/repository-rule-violation-error_metadata.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
import 'package:github/model/repos/create_or_update_file_contents409_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-rule-violation-error.dart';
import 'package:github/model/repository-rule-violation-error_metadata.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';

sealed class Repos&#x2F;createOrUpdateFileContents409Response {
    static Repos&#x2F;createOrUpdateFileContents409Response fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Repos&#x2F;createOrUpdateFileContents409Response.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createOrUpdateFileContents409Response? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createOrUpdateFileContents409Response.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
