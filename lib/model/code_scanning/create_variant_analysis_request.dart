import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_scanning/create_variant_analysis_request.dart';
import 'package:github/model/code_scanning/create_variant_analysis_request.dart';

sealed class CodeScanning&#x2F;createVariantAnalysisRequest {
    static CodeScanning&#x2F;createVariantAnalysisRequest fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('CodeScanning&#x2F;createVariantAnalysisRequest.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeScanning&#x2F;createVariantAnalysisRequest? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return CodeScanning&#x2F;createVariantAnalysisRequest.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
