import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/update_column_request.dart';
import 'package:github/model/projects/update_column_request.dart';
@immutable
class Projects&#x2F;updateColumnRequest {
    Projects&#x2F;updateColumnRequest(
        { required this.name,
         }
    );

    factory Projects&#x2F;updateColumnRequest.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;updateColumnRequest(
            name: json['name'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;updateColumnRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;updateColumnRequest.fromJson(json);
    }

    final String  name;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
        };
    }

    @override
    int get hashCode =>
          name.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Projects&#x2F;updateColumnRequest
            && name == other.name
        ;
    }
}
