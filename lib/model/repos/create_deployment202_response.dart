import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_deployment202_response.dart';
import 'package:github/model/repos/create_deployment202_response.dart';
@immutable
class Repos&#x2F;createDeployment202Response {
    Repos&#x2F;createDeployment202Response(
        {  this.message,
         }
    );

    factory Repos&#x2F;createDeployment202Response.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createDeployment202Response(
            message: json['message'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createDeployment202Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createDeployment202Response.fromJson(json);
    }

    final  String? message;


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
        return other is Repos&#x2F;createDeployment202Response
            && message == other.message
        ;
    }
}
