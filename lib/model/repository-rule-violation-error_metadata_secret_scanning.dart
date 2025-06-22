import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
@immutable
class Repository-rule-violation-errorMetadataSecretScanning {
    Repository-rule-violation-errorMetadataSecretScanning(
        {  this.bypass_placeholders = const [],
         }
    );

    factory Repository-rule-violation-errorMetadataSecretScanning.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-violation-errorMetadataSecretScanning(
            bypass_placeholders: (json['bypass_placeholders'] as List?)?.map<Repository-rule-violation-errorMetadataSecretScanningBypassPlaceholdersInner>((e) => Repository-rule-violation-errorMetadataSecretScanningBypassPlaceholdersInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-violation-errorMetadataSecretScanning? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-violation-errorMetadataSecretScanning.fromJson(json);
    }

    final  List<Repository-rule-violation-errorMetadataSecretScanningBypassPlaceholdersInner>? bypass_placeholders;


    Map<String, dynamic> toJson() {
        return {
            'bypass_placeholders': bypass_placeholders?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
          bypass_placeholders.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-violation-errorMetadataSecretScanning
            && listsEqual(bypass_placeholders, other.bypass_placeholders)
        ;
    }
}
