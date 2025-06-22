import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-sarifs-status.dart';
import 'package:github/model/code-scanning-sarifs-status_processing_status.dart';
import 'package:github/model/code-scanning-sarifs-status.dart';
import 'package:github/model/code-scanning-sarifs-status_processing_status.dart';
@immutable
class Code-scanning-sarifs-status {
    Code-scanning-sarifs-status(
        {  this.processing_status, this.analyses_url, this.errors = const [],
         }
    );

    factory Code-scanning-sarifs-status.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-sarifs-status(
            processing_status: Code-scanning-sarifs-statusProcessingStatus.maybeFromJson(json['processing_status'] as String?) ,
            analyses_url: json['analyses_url'] as String? ,
            errors: (json['errors'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-sarifs-status? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-sarifs-status.fromJson(json);
    }

    final  Code-scanning-sarifs-statusProcessingStatus? processing_status;
    final  String? analyses_url;
    final  List<String>? errors;


    Map<String, dynamic> toJson() {
        return {
            'processing_status': processing_status?.toJson(),
            'analyses_url': analyses_url,
            'errors': errors,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          processing_status,
          analyses_url,
          errors,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-sarifs-status
            && processing_status == other.processing_status
            && analyses_url == other.analyses_url
            && listsEqual(errors, other.errors)
        ;
    }
}
