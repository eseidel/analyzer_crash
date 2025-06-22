import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/review_custom_gates_for_run_request.dart';
import 'package:github/model/review-custom-gates-comment-required.dart';
import 'package:github/model/review-custom-gates-state-required.dart';
import 'package:github/model/review-custom-gates-state-required_state.dart';
import 'package:github/model/actions/review_custom_gates_for_run_request.dart';
import 'package:github/model/review-custom-gates-comment-required.dart';
import 'package:github/model/review-custom-gates-state-required.dart';
import 'package:github/model/review-custom-gates-state-required_state.dart';

sealed class Actions&#x2F;reviewCustomGatesForRunRequest {
    static Actions&#x2F;reviewCustomGatesForRunRequest fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Actions&#x2F;reviewCustomGatesForRunRequest.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;reviewCustomGatesForRunRequest? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;reviewCustomGatesForRunRequest.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
