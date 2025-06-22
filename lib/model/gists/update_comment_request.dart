import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gists/update_comment_request.dart';
import 'package:github/model/gists/update_comment_request.dart';
@immutable
class Gists&#x2F;updateCommentRequest {
    Gists&#x2F;updateCommentRequest(
        { required this.body,
         }
    );

    factory Gists&#x2F;updateCommentRequest.fromJson(Map<String, dynamic>
        json) {
        return Gists&#x2F;updateCommentRequest(
            body: json['body'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gists&#x2F;updateCommentRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gists&#x2F;updateCommentRequest.fromJson(json);
    }

    final String  body;


    Map<String, dynamic> toJson() {
        return {
            'body': body,
        };
    }

    @override
    int get hashCode =>
          body.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gists&#x2F;updateCommentRequest
            && body == other.body
        ;
    }
}
