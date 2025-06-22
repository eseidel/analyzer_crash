import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/move_column_request.dart';
import 'package:github/model/projects/move_column_request.dart';
@immutable
class Projects&#x2F;moveColumnRequest {
    Projects&#x2F;moveColumnRequest(
        { required this.position,
         }
    );

    factory Projects&#x2F;moveColumnRequest.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;moveColumnRequest(
            position: json['position'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;moveColumnRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;moveColumnRequest.fromJson(json);
    }

    final String  position;


    Map<String, dynamic> toJson() {
        return {
            'position': position,
        };
    }

    @override
    int get hashCode =>
          position.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Projects&#x2F;moveColumnRequest
            && position == other.position
        ;
    }
}
