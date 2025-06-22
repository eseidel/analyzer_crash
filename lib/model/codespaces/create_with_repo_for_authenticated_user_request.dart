import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/create_with_repo_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/create_with_repo_for_authenticated_user_request_geo.dart';
import 'package:github/model/codespaces/create_with_repo_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/create_with_repo_for_authenticated_user_request_geo.dart';
@immutable
class Codespaces&#x2F;createWithRepoForAuthenticatedUserRequest {
    Codespaces&#x2F;createWithRepoForAuthenticatedUserRequest(
        {  this.ref, this.location, this.geo, this.client_ip, this.machine, this.devcontainer_path, this.multi_repo_permissions_opt_out, this.working_directory, this.idle_timeout_minutes, this.display_name, this.retention_period_minutes,
         }
    );

    factory Codespaces&#x2F;createWithRepoForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;createWithRepoForAuthenticatedUserRequest(
            ref: json['ref'] as String? ,
            location: json['location'] as String? ,
            geo: Codespaces/createWithRepoForAuthenticatedUserRequestGeo.maybeFromJson(json['geo'] as String?) ,
            client_ip: json['client_ip'] as String? ,
            machine: json['machine'] as String? ,
            devcontainer_path: json['devcontainer_path'] as String? ,
            multi_repo_permissions_opt_out: (json['multi_repo_permissions_opt_out'] as bool?) ,
            working_directory: json['working_directory'] as String? ,
            idle_timeout_minutes: (json['idle_timeout_minutes'] as int?).toInt() ,
            display_name: json['display_name'] as String? ,
            retention_period_minutes: (json['retention_period_minutes'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;createWithRepoForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;createWithRepoForAuthenticatedUserRequest.fromJson(json);
    }

    final  String? ref;
    final  String? location;
    final  Codespaces/createWithRepoForAuthenticatedUserRequestGeo? geo;
    final  String? client_ip;
    final  String? machine;
    final  String? devcontainer_path;
    final  bool? multi_repo_permissions_opt_out;
    final  String? working_directory;
    final  int? idle_timeout_minutes;
    final  String? display_name;
    final  int? retention_period_minutes;


    Map<String, dynamic> toJson() {
        return {
            'ref': ref,
            'location': location,
            'geo': geo?.toJson(),
            'client_ip': client_ip,
            'machine': machine,
            'devcontainer_path': devcontainer_path,
            'multi_repo_permissions_opt_out': multi_repo_permissions_opt_out,
            'working_directory': working_directory,
            'idle_timeout_minutes': idle_timeout_minutes,
            'display_name': display_name,
            'retention_period_minutes': retention_period_minutes,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ref,
          location,
          geo,
          client_ip,
          machine,
          devcontainer_path,
          multi_repo_permissions_opt_out,
          working_directory,
          idle_timeout_minutes,
          display_name,
          retention_period_minutes,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;createWithRepoForAuthenticatedUserRequest
            && ref == other.ref
            && location == other.location
            && geo == other.geo
            && client_ip == other.client_ip
            && machine == other.machine
            && devcontainer_path == other.devcontainer_path
            && multi_repo_permissions_opt_out == other.multi_repo_permissions_opt_out
            && working_directory == other.working_directory
            && idle_timeout_minutes == other.idle_timeout_minutes
            && display_name == other.display_name
            && retention_period_minutes == other.retention_period_minutes
        ;
    }
}
