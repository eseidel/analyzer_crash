import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/checks/create_suite_request.dart';
import 'package:github/model/checks/create_suite_request.dart';
@immutable
class Checks&#x2F;createSuiteRequest {
    Checks&#x2F;createSuiteRequest(
        { required this.head_sha,
         }
    );

    factory Checks&#x2F;createSuiteRequest.fromJson(Map<String, dynamic>
        json) {
        return Checks&#x2F;createSuiteRequest(
            head_sha: json['head_sha'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Checks&#x2F;createSuiteRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Checks&#x2F;createSuiteRequest.fromJson(json);
    }

    final String  head_sha;


    Map<String, dynamic> toJson() {
        return {
            'head_sha': head_sha,
        };
    }

    @override
    int get hashCode =>
          head_sha.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Checks&#x2F;createSuiteRequest
            && head_sha == other.head_sha
        ;
    }
}
