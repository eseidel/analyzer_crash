import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/hook-response.dart';
import 'package:github/model/hook-response.dart';
@immutable
class Hook-response {
    Hook-response(
        { required this.code,required this.status,required this.message,
         }
    );

    factory Hook-response.fromJson(Map<String, dynamic>
        json) {
        return Hook-response(
            code: (json['code'] as int).toInt() ,
            status: json['status'] as String ,
            message: json['message'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Hook-response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Hook-response.fromJson(json);
    }

    final int  code;
    final String  status;
    final String  message;


    Map<String, dynamic> toJson() {
        return {
            'code': code,
            'status': status,
            'message': message,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          code,
          status,
          message,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Hook-response
            && code == other.code
            && status == other.status
            && message == other.message
        ;
    }
}
