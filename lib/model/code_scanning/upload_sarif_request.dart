import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_scanning/upload_sarif_request.dart';
import 'package:github/model/code-scanning-analysis-commit-sha.dart';
import 'package:github/model/code-scanning-ref-full.dart';
import 'package:github/model/code-scanning-analysis-sarif-file.dart';
import 'package:github/model/code_scanning/upload_sarif_request.dart';
import 'package:github/model/code-scanning-analysis-commit-sha.dart';
import 'package:github/model/code-scanning-ref-full.dart';
import 'package:github/model/code-scanning-analysis-sarif-file.dart';
@immutable
class CodeScanning&#x2F;uploadSarifRequest {
    CodeScanning&#x2F;uploadSarifRequest(
        { required this.commit_sha,required this.ref,required this.sarif, this.checkout_uri, this.started_at, this.tool_name, this.validate,
         }
    );

    factory CodeScanning&#x2F;uploadSarifRequest.fromJson(Map<String, dynamic>
        json) {
        return CodeScanning&#x2F;uploadSarifRequest(
            commit_sha: Code-scanning-analysis-commit-sha((json['commit_sha'] as String) ),
            ref: Code-scanning-ref-full((json['ref'] as String) ),
            sarif: Code-scanning-analysis-sarif-file((json['sarif'] as String) ),
            checkout_uri: json['checkout_uri'] as String? ,
            started_at: maybeParseDateTime(json['started_at'] as String?) ,
            tool_name: json['tool_name'] as String? ,
            validate: (json['validate'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeScanning&#x2F;uploadSarifRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return CodeScanning&#x2F;uploadSarifRequest.fromJson(json);
    }

    final Code-scanning-analysis-commit-sha  commit_sha;
    final Code-scanning-ref-full  ref;
    final Code-scanning-analysis-sarif-file  sarif;
    final  String? checkout_uri;
    final  DateTime? started_at;
    final  String? tool_name;
    final  bool? validate;


    Map<String, dynamic> toJson() {
        return {
            'commit_sha': commit_sha.toJson(),
            'ref': ref.toJson(),
            'sarif': sarif.toJson(),
            'checkout_uri': checkout_uri,
            'started_at': started_at?.toIso8601String(),
            'tool_name': tool_name,
            'validate': validate,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          commit_sha,
          ref,
          sarif,
          checkout_uri,
          started_at,
          tool_name,
          validate,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is CodeScanning&#x2F;uploadSarifRequest
            && commit_sha == other.commit_sha
            && ref == other.ref
            && sarif == other.sarif
            && checkout_uri == other.checkout_uri
            && started_at == other.started_at
            && tool_name == other.tool_name
            && validate == other.validate
        ;
    }
}
