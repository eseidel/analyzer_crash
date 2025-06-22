import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/create_card_request.dart';
import 'package:github/model/projects/create_card_request.dart';
@immutable
class Projects&#x2F;createCardRequest {
    Projects&#x2F;createCardRequest(
        { required this.content_id,required this.content_type,
         }
    );

    factory Projects&#x2F;createCardRequest.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;createCardRequest(
            content_id: (json['content_id'] as int).toInt() ,
            content_type: json['content_type'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;createCardRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;createCardRequest.fromJson(json);
    }

    final int  content_id;
    final String  content_type;


    Map<String, dynamic> toJson() {
        return {
            'content_id': content_id,
            'content_type': content_type,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          content_id,
          content_type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Projects&#x2F;createCardRequest
            && content_id == other.content_id
            && content_type == other.content_type
        ;
    }
}
