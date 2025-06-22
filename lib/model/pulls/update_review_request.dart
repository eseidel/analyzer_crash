import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/update_review_request.dart';
import 'package:github/model/pulls/update_review_request.dart';
@immutable
class Pulls&#x2F;updateReviewRequest {
    Pulls&#x2F;updateReviewRequest(
        { required this.body,
         }
    );

    factory Pulls&#x2F;updateReviewRequest.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;updateReviewRequest(
            body: json['body'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;updateReviewRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;updateReviewRequest.fromJson(json);
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
        return other is Pulls&#x2F;updateReviewRequest
            && body == other.body
        ;
    }
}
