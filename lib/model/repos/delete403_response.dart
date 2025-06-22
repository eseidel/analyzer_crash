import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/delete403_response.dart';
import 'package:github/model/repos/delete403_response.dart';
@immutable
class Repos&#x2F;delete403Response {
    Repos&#x2F;delete403Response(
        {  this.message, this.documentation_url,
         }
    );

    factory Repos&#x2F;delete403Response.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;delete403Response(
            message: json['message'] as String? ,
            documentation_url: json['documentation_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;delete403Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;delete403Response.fromJson(json);
    }

    final  String? message;
    final  String? documentation_url;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'documentation_url': documentation_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          message,
          documentation_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;delete403Response
            && message == other.message
            && documentation_url == other.documentation_url
        ;
    }
}
