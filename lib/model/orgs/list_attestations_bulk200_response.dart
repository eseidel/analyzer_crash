import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/list_attestations_bulk200_response.dart';
import 'package:github/model/orgs/list_attestations_bulk200_response_page_info.dart';
import 'package:github/model/orgs/list_attestations_bulk200_response.dart';
import 'package:github/model/orgs/list_attestations_bulk200_response_page_info.dart';
@immutable
class Orgs&#x2F;listAttestationsBulk200Response {
    Orgs&#x2F;listAttestationsBulk200Response(
        {  this.attestations_subject_digests, this.page_info,
         }
    );

    factory Orgs&#x2F;listAttestationsBulk200Response.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;listAttestationsBulk200Response(
            attestations_subject_digests: json['attestations_subject_digests'].map((key, value) => MapEntry(key, (value as List).map<Orgs/listAttestationsBulk200ResponseAttestationsSubjectDigestsInner>((e) => Orgs/listAttestationsBulk200ResponseAttestationsSubjectDigestsInner.fromJson(e as Map<String, dynamic>) ).toList() )).toMap(),
            page_info: Orgs/listAttestationsBulk200ResponsePageInfo.maybeFromJson(json['page_info'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;listAttestationsBulk200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;listAttestationsBulk200Response.fromJson(json);
    }

    final  Map<String, List<Orgs/listAttestationsBulk200ResponseAttestationsSubjectDigestsInner>>? attestations_subject_digests;
    final  Orgs/listAttestationsBulk200ResponsePageInfo? page_info;


    Map<String, dynamic> toJson() {
        return {
            'attestations_subject_digests': attestations_subject_digests.map((key, value) => MapEntry(key, value.map((e) => e.toJson()).toList())).toMap(),
            'page_info': page_info?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          attestations_subject_digests,
          page_info,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;listAttestationsBulk200Response
            && mapsEqual(attestations_subject_digests, other.attestations_subject_digests)
            && page_info == other.page_info
        ;
    }
}
