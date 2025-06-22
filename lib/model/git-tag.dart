import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git-tag.dart';
import 'package:github/model/git-tag_tagger.dart';
import 'package:github/model/git-tag_object.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/git-tag.dart';
import 'package:github/model/git-tag_tagger.dart';
import 'package:github/model/git-tag_object.dart';
import 'package:github/model/verification.dart';
@immutable
class Git-tag {
    Git-tag(
        { required this.node_id,required this.tag,required this.sha,required this.url,required this.message,required this.tagger,required this.object, this.verification,
         }
    );

    factory Git-tag.fromJson(Map<String, dynamic>
        json) {
        return Git-tag(
            node_id: json['node_id'] as String ,
            tag: json['tag'] as String ,
            sha: json['sha'] as String ,
            url: json['url'] as String ,
            message: json['message'] as String ,
            tagger: Git-tagTagger.fromJson(json['tagger'] as Map<String, dynamic>) ,
            object: Git-tagObject.fromJson(json['object'] as Map<String, dynamic>) ,
            verification: Verification.maybeFromJson(json['verification'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git-tag? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git-tag.fromJson(json);
    }

    final String  node_id;
    final String  tag;
    final String  sha;
    final String  url;
    final String  message;
    final Git-tagTagger  tagger;
    final Git-tagObject  object;
    final  Verification? verification;


    Map<String, dynamic> toJson() {
        return {
            'node_id': node_id,
            'tag': tag,
            'sha': sha,
            'url': url,
            'message': message,
            'tagger': tagger.toJson(),
            'object': object.toJson(),
            'verification': verification?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          node_id,
          tag,
          sha,
          url,
          message,
          tagger,
          object,
          verification,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git-tag
            && node_id == other.node_id
            && tag == other.tag
            && sha == other.sha
            && url == other.url
            && message == other.message
            && tagger == other.tagger
            && object == other.object
            && verification == other.verification
        ;
    }
}
