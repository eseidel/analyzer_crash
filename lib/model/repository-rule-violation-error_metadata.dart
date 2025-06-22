import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-violation-error_metadata.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
import 'package:github/model/repository-rule-violation-error_metadata.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
@immutable
class Repository-rule-violation-errorMetadata {
    Repository-rule-violation-errorMetadata(
        {  this.secret_scanning,
         }
    );

    factory Repository-rule-violation-errorMetadata.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-violation-errorMetadata(
            secret_scanning: Repository-rule-violation-errorMetadataSecretScanning.maybeFromJson(json['secret_scanning'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-violation-errorMetadata? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-violation-errorMetadata.fromJson(json);
    }

    final  Repository-rule-violation-errorMetadataSecretScanning? secret_scanning;


    Map<String, dynamic> toJson() {
        return {
            'secret_scanning': secret_scanning?.toJson(),
        };
    }

    @override
    int get hashCode =>
          secret_scanning.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-violation-errorMetadata
            && secret_scanning == other.secret_scanning
        ;
    }
}
