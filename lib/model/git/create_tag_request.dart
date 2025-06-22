import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git/create_tag_request.dart';
import 'package:github/model/git/create_tag_request_type.dart';
import 'package:github/model/git/create_tag_request_tagger.dart';
import 'package:github/model/git/create_tag_request.dart';
import 'package:github/model/git/create_tag_request_type.dart';
import 'package:github/model/git/create_tag_request_tagger.dart';
@immutable
class Git&#x2F;createTagRequest {
    Git&#x2F;createTagRequest(
        { required this.tag,required this.message,required this.object,required this.type, this.tagger,
         }
    );

    factory Git&#x2F;createTagRequest.fromJson(Map<String, dynamic>
        json) {
        return Git&#x2F;createTagRequest(
            tag: json['tag'] as String ,
            message: json['message'] as String ,
            object: json['object'] as String ,
            type: Git/createTagRequestType.fromJson(json['type'] as String) ,
            tagger: Git/createTagRequestTagger.maybeFromJson(json['tagger'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git&#x2F;createTagRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git&#x2F;createTagRequest.fromJson(json);
    }

    final String  tag;
    final String  message;
    final String  object;
    final Git/createTagRequestType  type;
    final  Git/createTagRequestTagger? tagger;


    Map<String, dynamic> toJson() {
        return {
            'tag': tag,
            'message': message,
            'object': object,
            'type': type.toJson(),
            'tagger': tagger?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          tag,
          message,
          object,
          type,
          tagger,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git&#x2F;createTagRequest
            && tag == other.tag
            && message == other.message
            && object == other.object
            && type == other.type
            && tagger == other.tagger
        ;
    }
}
