import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/migrations/start_import_request.dart';
import 'package:github/model/migrations/start_import_request_vcs.dart';
import 'package:github/model/migrations/start_import_request.dart';
import 'package:github/model/migrations/start_import_request_vcs.dart';
@immutable
class Migrations&#x2F;startImportRequest {
    Migrations&#x2F;startImportRequest(
        { required this.vcs_url, this.vcs, this.vcs_username, this.vcs_password, this.tfvc_project,
         }
    );

    factory Migrations&#x2F;startImportRequest.fromJson(Map<String, dynamic>
        json) {
        return Migrations&#x2F;startImportRequest(
            vcs_url: json['vcs_url'] as String ,
            vcs: Migrations/startImportRequestVcs.maybeFromJson(json['vcs'] as String?) ,
            vcs_username: json['vcs_username'] as String? ,
            vcs_password: json['vcs_password'] as String? ,
            tfvc_project: json['tfvc_project'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Migrations&#x2F;startImportRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Migrations&#x2F;startImportRequest.fromJson(json);
    }

    final String  vcs_url;
    final  Migrations/startImportRequestVcs? vcs;
    final  String? vcs_username;
    final  String? vcs_password;
    final  String? tfvc_project;


    Map<String, dynamic> toJson() {
        return {
            'vcs_url': vcs_url,
            'vcs': vcs?.toJson(),
            'vcs_username': vcs_username,
            'vcs_password': vcs_password,
            'tfvc_project': tfvc_project,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          vcs_url,
          vcs,
          vcs_username,
          vcs_password,
          tfvc_project,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Migrations&#x2F;startImportRequest
            && vcs_url == other.vcs_url
            && vcs == other.vcs
            && vcs_username == other.vcs_username
            && vcs_password == other.vcs_password
            && tfvc_project == other.tfvc_project
        ;
    }
}
