import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/move_card_request.dart';
import 'package:github/model/projects/move_card_request.dart';
@immutable
class Projects&#x2F;moveCardRequest {
    Projects&#x2F;moveCardRequest(
        { required this.position, this.column_id,
         }
    );

    factory Projects&#x2F;moveCardRequest.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;moveCardRequest(
            position: json['position'] as String ,
            column_id: (json['column_id'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;moveCardRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;moveCardRequest.fromJson(json);
    }

    final String  position;
    final  int? column_id;


    Map<String, dynamic> toJson() {
        return {
            'position': position,
            'column_id': column_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          position,
          column_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Projects&#x2F;moveCardRequest
            && position == other.position
            && column_id == other.column_id
        ;
    }
}
