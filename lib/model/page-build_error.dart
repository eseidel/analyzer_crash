import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/page-build_error.dart';
import 'package:github/model/page-build_error.dart';
@immutable
class Page-buildError {
    Page-buildError(
        { required this.message,
         }
    );

    factory Page-buildError.fromJson(Map<String, dynamic>
        json) {
        return Page-buildError(
            message: json['message'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Page-buildError? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Page-buildError.fromJson(json);
    }

    final String  message;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
        };
    }

    @override
    int get hashCode =>
          message.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Page-buildError
            && message == other.message
        ;
    }
}
