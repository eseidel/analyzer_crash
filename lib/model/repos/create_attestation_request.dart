import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_attestation_request.dart';
import 'package:github/model/repos/create_attestation_request_bundle.dart';
import 'package:github/model/repos/create_attestation_request.dart';
import 'package:github/model/repos/create_attestation_request_bundle.dart';
@immutable
class Repos&#x2F;createAttestationRequest {
    Repos&#x2F;createAttestationRequest(
        { required this.bundle,
         }
    );

    factory Repos&#x2F;createAttestationRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createAttestationRequest(
            bundle: Repos/createAttestationRequestBundle.fromJson(json['bundle'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createAttestationRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createAttestationRequest.fromJson(json);
    }

    final Repos/createAttestationRequestBundle  bundle;


    Map<String, dynamic> toJson() {
        return {
            'bundle': bundle.toJson(),
        };
    }

    @override
    int get hashCode =>
          bundle.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createAttestationRequest
            && bundle == other.bundle
        ;
    }
}
