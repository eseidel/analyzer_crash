import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/generate_release_notes_request.dart';
import 'package:github/model/repos/generate_release_notes_request.dart';
@immutable
class Repos&#x2F;generateReleaseNotesRequest {
    Repos&#x2F;generateReleaseNotesRequest(
        { required this.tag_name, this.target_commitish, this.previous_tag_name, this.configuration_file_path,
         }
    );

    factory Repos&#x2F;generateReleaseNotesRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;generateReleaseNotesRequest(
            tag_name: json['tag_name'] as String ,
            target_commitish: json['target_commitish'] as String? ,
            previous_tag_name: json['previous_tag_name'] as String? ,
            configuration_file_path: json['configuration_file_path'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;generateReleaseNotesRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;generateReleaseNotesRequest.fromJson(json);
    }

    final String  tag_name;
    final  String? target_commitish;
    final  String? previous_tag_name;
    final  String? configuration_file_path;


    Map<String, dynamic> toJson() {
        return {
            'tag_name': tag_name,
            'target_commitish': target_commitish,
            'previous_tag_name': previous_tag_name,
            'configuration_file_path': configuration_file_path,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          tag_name,
          target_commitish,
          previous_tag_name,
          configuration_file_path,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;generateReleaseNotesRequest
            && tag_name == other.tag_name
            && target_commitish == other.target_commitish
            && previous_tag_name == other.previous_tag_name
            && configuration_file_path == other.configuration_file_path
        ;
    }
}
