import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-violation-error.dart';
import 'package:github/model/repository-rule-violation-error_metadata.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
import 'package:github/model/repository-rule-violation-error.dart';
import 'package:github/model/repository-rule-violation-error_metadata.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
@immutable
class Repository-rule-violation-error {
    Repository-rule-violation-error(
        {  this.message, this.documentation_url, this.status, this.metadata,
         }
    );

    factory Repository-rule-violation-error.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-violation-error(
            message: json['message'] as String? ,
            documentation_url: json['documentation_url'] as String? ,
            status: json['status'] as String? ,
            metadata: Repository-rule-violation-errorMetadata.maybeFromJson(json['metadata'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-violation-error? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-violation-error.fromJson(json);
    }

    final  String? message;
    final  String? documentation_url;
    final  String? status;
    final  Repository-rule-violation-errorMetadata? metadata;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'documentation_url': documentation_url,
            'status': status,
            'metadata': metadata?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          message,
          documentation_url,
          status,
          metadata,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-violation-error
            && message == other.message
            && documentation_url == other.documentation_url
            && status == other.status
            && metadata == other.metadata
        ;
    }
}
