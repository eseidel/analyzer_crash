import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/credentials/revoke_request.dart';
import 'package:github/model/credentials/revoke_request.dart';
@immutable
class Credentials&#x2F;revokeRequest {
    Credentials&#x2F;revokeRequest(
        {  this.credentials = const [],
         }
    );

    factory Credentials&#x2F;revokeRequest.fromJson(Map<String, dynamic>
        json) {
        return Credentials&#x2F;revokeRequest(
            credentials: (json['credentials'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Credentials&#x2F;revokeRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Credentials&#x2F;revokeRequest.fromJson(json);
    }

    final List<String>  credentials;


    Map<String, dynamic> toJson() {
        return {
            'credentials': credentials,
        };
    }

    @override
    int get hashCode =>
          credentials.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Credentials&#x2F;revokeRequest
            && listsEqual(credentials, other.credentials)
        ;
    }
}
