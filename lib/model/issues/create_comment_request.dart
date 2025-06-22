import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/create_comment_request.dart';
import 'package:github/model/issues/create_comment_request.dart';
@immutable
class Issues&#x2F;createCommentRequest {
    Issues&#x2F;createCommentRequest(
        { required this.body,
         }
    );

    factory Issues&#x2F;createCommentRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;createCommentRequest(
            body: json['body'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;createCommentRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;createCommentRequest.fromJson(json);
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
        return other is Issues&#x2F;createCommentRequest
            && body == other.body
        ;
    }
}
