import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/apps/check_token_request.dart';
import 'package:github/model/apps/check_token_request.dart';
@immutable
class Apps&#x2F;checkTokenRequest {
    Apps&#x2F;checkTokenRequest(
        { required this.access_token,
         }
    );

    factory Apps&#x2F;checkTokenRequest.fromJson(Map<String, dynamic>
        json) {
        return Apps&#x2F;checkTokenRequest(
            access_token: json['access_token'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Apps&#x2F;checkTokenRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Apps&#x2F;checkTokenRequest.fromJson(json);
    }

    final String  access_token;


    Map<String, dynamic> toJson() {
        return {
            'access_token': access_token,
        };
    }

    @override
    int get hashCode =>
          access_token.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Apps&#x2F;checkTokenRequest
            && access_token == other.access_token
        ;
    }
}
