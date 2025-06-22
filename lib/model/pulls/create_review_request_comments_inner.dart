import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/create_review_request_comments_inner.dart';
import 'package:github/model/pulls/create_review_request_comments_inner.dart';
@immutable
class Pulls&#x2F;createReviewRequestCommentsInner {
    Pulls&#x2F;createReviewRequestCommentsInner(
        { required this.path, this.position,required this.body, this.line, this.side, this.start_line, this.start_side,
         }
    );

    factory Pulls&#x2F;createReviewRequestCommentsInner.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;createReviewRequestCommentsInner(
            path: json['path'] as String ,
            position: (json['position'] as int?).toInt() ,
            body: json['body'] as String ,
            line: (json['line'] as int?).toInt() ,
            side: json['side'] as String? ,
            start_line: (json['start_line'] as int?).toInt() ,
            start_side: json['start_side'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;createReviewRequestCommentsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;createReviewRequestCommentsInner.fromJson(json);
    }

    final String  path;
    final  int? position;
    final String  body;
    final  int? line;
    final  String? side;
    final  int? start_line;
    final  String? start_side;


    Map<String, dynamic> toJson() {
        return {
            'path': path,
            'position': position,
            'body': body,
            'line': line,
            'side': side,
            'start_line': start_line,
            'start_side': start_side,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          path,
          position,
          body,
          line,
          side,
          start_line,
          start_side,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pulls&#x2F;createReviewRequestCommentsInner
            && path == other.path
            && position == other.position
            && body == other.body
            && line == other.line
            && side == other.side
            && start_line == other.start_line
            && start_side == other.start_side
        ;
    }
}
