import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/review-custom-gates-comment-required.dart';
import 'package:github/model/review-custom-gates-comment-required.dart';
@immutable
class Review-custom-gates-comment-required {
    Review-custom-gates-comment-required(
        { required this.environment_name,required this.comment,
         }
    );

    factory Review-custom-gates-comment-required.fromJson(Map<String, dynamic>
        json) {
        return Review-custom-gates-comment-required(
            environment_name: json['environment_name'] as String ,
            comment: json['comment'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Review-custom-gates-comment-required? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Review-custom-gates-comment-required.fromJson(json);
    }

    final String  environment_name;
    final String  comment;


    Map<String, dynamic> toJson() {
        return {
            'environment_name': environment_name,
            'comment': comment,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          environment_name,
          comment,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Review-custom-gates-comment-required
            && environment_name == other.environment_name
            && comment == other.comment
        ;
    }
}
