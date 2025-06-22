import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_scanning/update_default_setup_response.dart';
import 'package:github/model/code-scanning-default-setup-update-response.dart';
import 'package:github/model/code_scanning/update_default_setup_response.dart';
import 'package:github/model/code-scanning-default-setup-update-response.dart';

sealed class CodeScanning&#x2F;updateDefaultSetupResponse {
    static CodeScanning&#x2F;updateDefaultSetupResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('CodeScanning&#x2F;updateDefaultSetupResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeScanning&#x2F;updateDefaultSetupResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return CodeScanning&#x2F;updateDefaultSetupResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
