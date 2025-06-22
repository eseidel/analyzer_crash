import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/list_attestations_bulk_request.dart';
import 'package:github/model/orgs/list_attestations_bulk_request.dart';
@immutable
class Orgs&#x2F;listAttestationsBulkRequest {
    Orgs&#x2F;listAttestationsBulkRequest(
        {  this.subject_digests = const [], this.predicate_type,
         }
    );

    factory Orgs&#x2F;listAttestationsBulkRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;listAttestationsBulkRequest(
            subject_digests: (json['subject_digests'] as List).cast<String>() ,
            predicate_type: json['predicate_type'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;listAttestationsBulkRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;listAttestationsBulkRequest.fromJson(json);
    }

    final List<String>  subject_digests;
    final  String? predicate_type;


    Map<String, dynamic> toJson() {
        return {
            'subject_digests': subject_digests,
            'predicate_type': predicate_type,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          subject_digests,
          predicate_type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;listAttestationsBulkRequest
            && listsEqual(subject_digests, other.subject_digests)
            && predicate_type == other.predicate_type
        ;
    }
}
