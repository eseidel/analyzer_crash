import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request_pull_request.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request_geo.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request_pull_request.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request_geo.dart';
@immutable
class Codespaces&#x2F;createForAuthenticatedUserRequest {
    Codespaces&#x2F;createForAuthenticatedUserRequest(
        { required this.pull_request, this.location, this.geo, this.machine, this.devcontainer_path, this.working_directory, this.idle_timeout_minutes,
         }
    );

    factory Codespaces&#x2F;createForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;createForAuthenticatedUserRequest(
            pull_request: Codespaces/createForAuthenticatedUserRequestPullRequest.fromJson(json['pull_request'] as Map<String, dynamic>) ,
            location: json['location'] as String? ,
            geo: Codespaces/createForAuthenticatedUserRequestGeo.maybeFromJson(json['geo'] as String?) ,
            machine: json['machine'] as String? ,
            devcontainer_path: json['devcontainer_path'] as String? ,
            working_directory: json['working_directory'] as String? ,
            idle_timeout_minutes: (json['idle_timeout_minutes'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;createForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;createForAuthenticatedUserRequest.fromJson(json);
    }

    final Codespaces/createForAuthenticatedUserRequestPullRequest  pull_request;
    final  String? location;
    final  Codespaces/createForAuthenticatedUserRequestGeo? geo;
    final  String? machine;
    final  String? devcontainer_path;
    final  String? working_directory;
    final  int? idle_timeout_minutes;


    Map<String, dynamic> toJson() {
        return {
            'pull_request': pull_request.toJson(),
            'location': location,
            'geo': geo?.toJson(),
            'machine': machine,
            'devcontainer_path': devcontainer_path,
            'working_directory': working_directory,
            'idle_timeout_minutes': idle_timeout_minutes,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          pull_request,
          location,
          geo,
          machine,
          devcontainer_path,
          working_directory,
          idle_timeout_minutes,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;createForAuthenticatedUserRequest
            && pull_request == other.pull_request
            && location == other.location
            && geo == other.geo
            && machine == other.machine
            && devcontainer_path == other.devcontainer_path
            && working_directory == other.working_directory
            && idle_timeout_minutes == other.idle_timeout_minutes
        ;
    }
}
