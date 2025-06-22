import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_release_request.dart';
import 'package:github/model/repos/create_release_request_make_latest.dart';
import 'package:github/model/repos/create_release_request.dart';
import 'package:github/model/repos/create_release_request_make_latest.dart';
@immutable
class Repos&#x2F;createReleaseRequest {
    Repos&#x2F;createReleaseRequest(
        { required this.tag_name, this.target_commitish, this.name, this.body, this.draft = false, this.prerelease = false, this.discussion_category_name, this.generate_release_notes = false, this.make_latest = Repos/createReleaseRequestMakeLatest.true,
         }
    );

    factory Repos&#x2F;createReleaseRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createReleaseRequest(
            tag_name: json['tag_name'] as String ,
            target_commitish: json['target_commitish'] as String? ,
            name: json['name'] as String? ,
            body: json['body'] as String? ,
            draft: (json['draft'] as bool?) ,
            prerelease: (json['prerelease'] as bool?) ,
            discussion_category_name: json['discussion_category_name'] as String? ,
            generate_release_notes: (json['generate_release_notes'] as bool?) ,
            make_latest: Repos/createReleaseRequestMakeLatest.maybeFromJson(json['make_latest'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createReleaseRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createReleaseRequest.fromJson(json);
    }

    final String  tag_name;
    final  String? target_commitish;
    final  String? name;
    final  String? body;
    final  bool? draft;
    final  bool? prerelease;
    final  String? discussion_category_name;
    final  bool? generate_release_notes;
    final  Repos/createReleaseRequestMakeLatest? make_latest;


    Map<String, dynamic> toJson() {
        return {
            'tag_name': tag_name,
            'target_commitish': target_commitish,
            'name': name,
            'body': body,
            'draft': draft,
            'prerelease': prerelease,
            'discussion_category_name': discussion_category_name,
            'generate_release_notes': generate_release_notes,
            'make_latest': make_latest?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          tag_name,
          target_commitish,
          name,
          body,
          draft,
          prerelease,
          discussion_category_name,
          generate_release_notes,
          make_latest,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createReleaseRequest
            && tag_name == other.tag_name
            && target_commitish == other.target_commitish
            && name == other.name
            && body == other.body
            && draft == other.draft
            && prerelease == other.prerelease
            && discussion_category_name == other.discussion_category_name
            && generate_release_notes == other.generate_release_notes
            && make_latest == other.make_latest
        ;
    }
}
