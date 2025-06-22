import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_release_request.dart';
import 'package:github/model/repos/update_release_request_make_latest.dart';
import 'package:github/model/repos/update_release_request.dart';
import 'package:github/model/repos/update_release_request_make_latest.dart';
@immutable
class Repos&#x2F;updateReleaseRequest {
    Repos&#x2F;updateReleaseRequest(
        {  this.tag_name, this.target_commitish, this.name, this.body, this.draft, this.prerelease, this.make_latest = Repos/updateReleaseRequestMakeLatest.true, this.discussion_category_name,
         }
    );

    factory Repos&#x2F;updateReleaseRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateReleaseRequest(
            tag_name: json['tag_name'] as String? ,
            target_commitish: json['target_commitish'] as String? ,
            name: json['name'] as String? ,
            body: json['body'] as String? ,
            draft: (json['draft'] as bool?) ,
            prerelease: (json['prerelease'] as bool?) ,
            make_latest: Repos/updateReleaseRequestMakeLatest.maybeFromJson(json['make_latest'] as String?) ,
            discussion_category_name: json['discussion_category_name'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateReleaseRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateReleaseRequest.fromJson(json);
    }

    final  String? tag_name;
    final  String? target_commitish;
    final  String? name;
    final  String? body;
    final  bool? draft;
    final  bool? prerelease;
    final  Repos/updateReleaseRequestMakeLatest? make_latest;
    final  String? discussion_category_name;


    Map<String, dynamic> toJson() {
        return {
            'tag_name': tag_name,
            'target_commitish': target_commitish,
            'name': name,
            'body': body,
            'draft': draft,
            'prerelease': prerelease,
            'make_latest': make_latest?.toJson(),
            'discussion_category_name': discussion_category_name,
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
          make_latest,
          discussion_category_name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updateReleaseRequest
            && tag_name == other.tag_name
            && target_commitish == other.target_commitish
            && name == other.name
            && body == other.body
            && draft == other.draft
            && prerelease == other.prerelease
            && make_latest == other.make_latest
            && discussion_category_name == other.discussion_category_name
        ;
    }
}
