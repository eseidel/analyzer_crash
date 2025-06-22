import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/delete_attestations_bulk_request.dart';
import 'package:github/model/users/delete_attestations_bulk_request.dart';
@immutable
class Users&#x2F;deleteAttestationsBulkRequest {
    Users&#x2F;deleteAttestationsBulkRequest(
        {  this.attestation_ids = const [],
         }
    );

    factory Users&#x2F;deleteAttestationsBulkRequest.fromJson(Map<String, dynamic>
        json) {
        return Users&#x2F;deleteAttestationsBulkRequest(
            attestation_ids: (json['attestation_ids'] as List).cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;deleteAttestationsBulkRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;deleteAttestationsBulkRequest.fromJson(json);
    }

    final List<int>  attestation_ids;


    Map<String, dynamic> toJson() {
        return {
            'attestation_ids': attestation_ids,
        };
    }

    @override
    int get hashCode =>
          attestation_ids.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Users&#x2F;deleteAttestationsBulkRequest
            && listsEqual(attestation_ids, other.attestation_ids)
        ;
    }
}
