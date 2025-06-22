import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-analysis-deletion.dart';
import 'package:github/model/code-scanning-analysis-deletion.dart';
@immutable
class Code-scanning-analysis-deletion {
    Code-scanning-analysis-deletion(
        { required this.next_analysis_url,required this.confirm_delete_url,
         }
    );

    factory Code-scanning-analysis-deletion.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-analysis-deletion(
            next_analysis_url: json['next_analysis_url'] as String ,
            confirm_delete_url: json['confirm_delete_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-analysis-deletion? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-analysis-deletion.fromJson(json);
    }

    final String  next_analysis_url;
    final String  confirm_delete_url;


    Map<String, dynamic> toJson() {
        return {
            'next_analysis_url': next_analysis_url,
            'confirm_delete_url': confirm_delete_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          next_analysis_url,
          confirm_delete_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-analysis-deletion
            && next_analysis_url == other.next_analysis_url
            && confirm_delete_url == other.confirm_delete_url
        ;
    }
}
