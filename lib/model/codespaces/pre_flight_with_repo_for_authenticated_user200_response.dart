import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/pre_flight_with_repo_for_authenticated_user200_response.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/codespaces/pre_flight_with_repo_for_authenticated_user200_response_defaults.dart';
import 'package:github/model/codespaces/pre_flight_with_repo_for_authenticated_user200_response.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/codespaces/pre_flight_with_repo_for_authenticated_user200_response_defaults.dart';
@immutable
class Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200Response {
    Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200Response(
        {  this.billable_owner, this.defaults,
         }
    );

    factory Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200Response.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200Response(
            billable_owner: Simple-user.maybeFromJson(json['billable_owner'] as Map<String, dynamic>?) ,
            defaults: Codespaces/preFlightWithRepoForAuthenticatedUser200ResponseDefaults.maybeFromJson(json['defaults'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200Response.fromJson(json);
    }

    final  Simple-user? billable_owner;
    final  Codespaces/preFlightWithRepoForAuthenticatedUser200ResponseDefaults? defaults;


    Map<String, dynamic> toJson() {
        return {
            'billable_owner': billable_owner?.toJson(),
            'defaults': defaults?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          billable_owner,
          defaults,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200Response
            && billable_owner == other.billable_owner
            && defaults == other.defaults
        ;
    }
}
