import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
@immutable
class Repository-rule-violation-errorMetadataSecretScanningBypassPlaceholdersInner {
    Repository-rule-violation-errorMetadataSecretScanningBypassPlaceholdersInner(
        {  this.placeholder_id, this.token_type,
         }
    );

    factory Repository-rule-violation-errorMetadataSecretScanningBypassPlaceholdersInner.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-violation-errorMetadataSecretScanningBypassPlaceholdersInner(
            placeholder_id: Secret-scanning-push-protection-bypass-placeholder-id((json['placeholder_id'] as String?) ),
            token_type: json['token_type'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-violation-errorMetadataSecretScanningBypassPlaceholdersInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-violation-errorMetadataSecretScanningBypassPlaceholdersInner.fromJson(json);
    }

    final  Secret-scanning-push-protection-bypass-placeholder-id? placeholder_id;
    final  String? token_type;


    Map<String, dynamic> toJson() {
        return {
            'placeholder_id': placeholder_id?.toJson(),
            'token_type': token_type,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          placeholder_id,
          token_type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-violation-errorMetadataSecretScanningBypassPlaceholdersInner
            && placeholder_id == other.placeholder_id
            && token_type == other.token_type
        ;
    }
}
