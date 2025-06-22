import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/update_card_request.dart';
import 'package:github/model/projects/update_card_request.dart';
@immutable
class Projects&#x2F;updateCardRequest {
    Projects&#x2F;updateCardRequest(
        {  this.note, this.archived,
         }
    );

    factory Projects&#x2F;updateCardRequest.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;updateCardRequest(
            note: json['note'] as String? ,
            archived: (json['archived'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;updateCardRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;updateCardRequest.fromJson(json);
    }

    final  String? note;
    final  bool? archived;


    Map<String, dynamic> toJson() {
        return {
            'note': note,
            'archived': archived,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          note,
          archived,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Projects&#x2F;updateCardRequest
            && note == other.note
            && archived == other.archived
        ;
    }
}
