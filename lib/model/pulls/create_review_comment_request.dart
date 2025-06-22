import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/create_review_comment_request.dart';
import 'package:github/model/pulls/create_review_comment_request_side.dart';
import 'package:github/model/pulls/create_review_comment_request_start_side.dart';
import 'package:github/model/pulls/create_review_comment_request_subject_type.dart';
import 'package:github/model/pulls/create_review_comment_request.dart';
import 'package:github/model/pulls/create_review_comment_request_side.dart';
import 'package:github/model/pulls/create_review_comment_request_start_side.dart';
import 'package:github/model/pulls/create_review_comment_request_subject_type.dart';
@immutable
class Pulls&#x2F;createReviewCommentRequest {
    Pulls&#x2F;createReviewCommentRequest(
        { required this.body,required this.commit_id,required this.path, this.position, this.side, this.line, this.start_line, this.start_side, this.in_reply_to, this.subject_type,
         }
    );

    factory Pulls&#x2F;createReviewCommentRequest.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;createReviewCommentRequest(
            body: json['body'] as String ,
            commit_id: json['commit_id'] as String ,
            path: json['path'] as String ,
            position: (json['position'] as int?).toInt() ,
            side: Pulls/createReviewCommentRequestSide.maybeFromJson(json['side'] as String?) ,
            line: (json['line'] as int?).toInt() ,
            start_line: (json['start_line'] as int?).toInt() ,
            start_side: Pulls/createReviewCommentRequestStartSide.maybeFromJson(json['start_side'] as String?) ,
            in_reply_to: (json['in_reply_to'] as int?).toInt() ,
            subject_type: Pulls/createReviewCommentRequestSubjectType.maybeFromJson(json['subject_type'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;createReviewCommentRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;createReviewCommentRequest.fromJson(json);
    }

    final String  body;
    final String  commit_id;
    final String  path;
    final  int? position;
    final  Pulls/createReviewCommentRequestSide? side;
    final  int? line;
    final  int? start_line;
    final  Pulls/createReviewCommentRequestStartSide? start_side;
    final  int? in_reply_to;
    final  Pulls/createReviewCommentRequestSubjectType? subject_type;


    Map<String, dynamic> toJson() {
        return {
            'body': body,
            'commit_id': commit_id,
            'path': path,
            'position': position,
            'side': side?.toJson(),
            'line': line,
            'start_line': start_line,
            'start_side': start_side?.toJson(),
            'in_reply_to': in_reply_to,
            'subject_type': subject_type?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          body,
          commit_id,
          path,
          position,
          side,
          line,
          start_line,
          start_side,
          in_reply_to,
          subject_type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pulls&#x2F;createReviewCommentRequest
            && body == other.body
            && commit_id == other.commit_id
            && path == other.path
            && position == other.position
            && side == other.side
            && line == other.line
            && start_line == other.start_line
            && start_side == other.start_side
            && in_reply_to == other.in_reply_to
            && subject_type == other.subject_type
        ;
    }
}
