import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/pre_flight_with_repo_for_authenticated_user200_response_defaults.dart';
import 'package:github/model/codespaces/pre_flight_with_repo_for_authenticated_user200_response_defaults.dart';
@immutable
class Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200ResponseDefaults {
    Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200ResponseDefaults(
        { required this.location,required this.devcontainer_path,
         }
    );

    factory Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200ResponseDefaults.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200ResponseDefaults(
            location: json['location'] as String ,
            devcontainer_path: json['devcontainer_path'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200ResponseDefaults? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200ResponseDefaults.fromJson(json);
    }

    final String  location;
    final String  devcontainer_path;


    Map<String, dynamic> toJson() {
        return {
            'location': location,
            'devcontainer_path': devcontainer_path,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          location,
          devcontainer_path,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;preFlightWithRepoForAuthenticatedUser200ResponseDefaults
            && location == other.location
            && devcontainer_path == other.devcontainer_path
        ;
    }
}
