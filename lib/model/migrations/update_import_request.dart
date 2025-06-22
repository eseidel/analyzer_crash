import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/migrations/update_import_request.dart';
import 'package:github/model/migrations/update_import_request_vcs.dart';
import 'package:github/model/migrations/update_import_request.dart';
import 'package:github/model/migrations/update_import_request_vcs.dart';
@immutable
class Migrations&#x2F;updateImportRequest {
    Migrations&#x2F;updateImportRequest(
        {  this.vcs_username, this.vcs_password, this.vcs, this.tfvc_project,
         }
    );

    factory Migrations&#x2F;updateImportRequest.fromJson(Map<String, dynamic>
        json) {
        return Migrations&#x2F;updateImportRequest(
            vcs_username: json['vcs_username'] as String? ,
            vcs_password: json['vcs_password'] as String? ,
            vcs: Migrations/updateImportRequestVcs.maybeFromJson(json['vcs'] as String?) ,
            tfvc_project: json['tfvc_project'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Migrations&#x2F;updateImportRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Migrations&#x2F;updateImportRequest.fromJson(json);
    }

    final  String? vcs_username;
    final  String? vcs_password;
    final  Migrations/updateImportRequestVcs? vcs;
    final  String? tfvc_project;


    Map<String, dynamic> toJson() {
        return {
            'vcs_username': vcs_username,
            'vcs_password': vcs_password,
            'vcs': vcs?.toJson(),
            'tfvc_project': tfvc_project,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          vcs_username,
          vcs_password,
          vcs,
          tfvc_project,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Migrations&#x2F;updateImportRequest
            && vcs_username == other.vcs_username
            && vcs_password == other.vcs_password
            && vcs == other.vcs
            && tfvc_project == other.tfvc_project
        ;
    }
}
