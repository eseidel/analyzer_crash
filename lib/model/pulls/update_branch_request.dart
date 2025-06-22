import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/update_branch_request.dart';
import 'package:github/model/pulls/update_branch_request.dart';
@immutable
class Pulls&#x2F;updateBranchRequest {
    Pulls&#x2F;updateBranchRequest(
        {  this.expected_head_sha,
         }
    );

    factory Pulls&#x2F;updateBranchRequest.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;updateBranchRequest(
            expected_head_sha: json['expected_head_sha'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;updateBranchRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;updateBranchRequest.fromJson(json);
    }

    final  String? expected_head_sha;


    Map<String, dynamic> toJson() {
        return {
            'expected_head_sha': expected_head_sha,
        };
    }

    @override
    int get hashCode =>
          expected_head_sha.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pulls&#x2F;updateBranchRequest
            && expected_head_sha == other.expected_head_sha
        ;
    }
}
