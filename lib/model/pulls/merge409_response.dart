import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/merge409_response.dart';
import 'package:github/model/pulls/merge409_response.dart';
@immutable
class Pulls&#x2F;merge409Response {
    Pulls&#x2F;merge409Response(
        {  this.message, this.documentation_url,
         }
    );

    factory Pulls&#x2F;merge409Response.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;merge409Response(
            message: json['message'] as String? ,
            documentation_url: json['documentation_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;merge409Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;merge409Response.fromJson(json);
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
        return other is Pulls&#x2F;merge409Response
            && message == other.message
            && documentation_url == other.documentation_url
        ;
    }
}
