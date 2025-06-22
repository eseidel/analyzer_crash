import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/update_comment_request.dart';
import 'package:github/model/issues/update_comment_request.dart';
@immutable
class Issues&#x2F;updateCommentRequest {
    Issues&#x2F;updateCommentRequest(
        { required this.body,
         }
    );

    factory Issues&#x2F;updateCommentRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;updateCommentRequest(
            body: json['body'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;updateCommentRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;updateCommentRequest.fromJson(json);
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
        return other is Issues&#x2F;updateCommentRequest
            && body == other.body
        ;
    }
}
