import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/update_branch202_response.dart';
import 'package:github/model/pulls/update_branch202_response.dart';
@immutable
class Pulls&#x2F;updateBranch202Response {
    Pulls&#x2F;updateBranch202Response(
        {  this.message, this.url,
         }
    );

    factory Pulls&#x2F;updateBranch202Response.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;updateBranch202Response(
            message: json['message'] as String? ,
            url: json['url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;updateBranch202Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;updateBranch202Response.fromJson(json);
    }

    final  String? message;
    final  String? url;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          message,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pulls&#x2F;updateBranch202Response
            && message == other.message
            && url == other.url
        ;
    }
}
