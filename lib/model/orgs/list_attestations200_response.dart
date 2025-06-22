import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/list_attestations200_response.dart';
import 'package:github/model/orgs/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/orgs/list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github/model/orgs/list_attestations200_response.dart';
import 'package:github/model/orgs/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/orgs/list_attestations200_response_attestations_inner_bundle.dart';
@immutable
class Orgs&#x2F;listAttestations200Response {
    Orgs&#x2F;listAttestations200Response(
        {  this.attestations = const [],
         }
    );

    factory Orgs&#x2F;listAttestations200Response.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;listAttestations200Response(
            attestations: (json['attestations'] as List?)?.map<Orgs/listAttestations200ResponseAttestationsInner>((e) => Orgs/listAttestations200ResponseAttestationsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;listAttestations200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;listAttestations200Response.fromJson(json);
    }

    final  List<Orgs/listAttestations200ResponseAttestationsInner>? attestations;


    Map<String, dynamic> toJson() {
        return {
            'attestations': attestations?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
          attestations.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;listAttestations200Response
            && listsEqual(attestations, other.attestations)
        ;
    }
}
