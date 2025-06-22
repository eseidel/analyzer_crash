import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github/model/orgs/list_attestations200_response_attestations_inner_bundle.dart';
@immutable
class Orgs&#x2F;listAttestations200ResponseAttestationsInnerBundle {
    Orgs&#x2F;listAttestations200ResponseAttestationsInnerBundle(
        {  this.mediaType, this.verificationMaterial, this.dsseEnvelope,
         }
    );

    factory Orgs&#x2F;listAttestations200ResponseAttestationsInnerBundle.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;listAttestations200ResponseAttestationsInnerBundle(
            mediaType: json['mediaType'] as String? ,
            verificationMaterial: throw UnimplementedError("RenderEmptyObject.fromJson"),
            dsseEnvelope: throw UnimplementedError("RenderEmptyObject.fromJson"),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;listAttestations200ResponseAttestationsInnerBundle? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;listAttestations200ResponseAttestationsInnerBundle.fromJson(json);
    }

    final  String? mediaType;
    final  Orgs/listAttestations200ResponseAttestationsInnerBundleVerificationMaterial? verificationMaterial;
    final  Orgs/listAttestations200ResponseAttestationsInnerBundleDsseEnvelope? dsseEnvelope;


    Map<String, dynamic> toJson() {
        return {
            'mediaType': mediaType,
            'verificationMaterial': throw UnimplementedError("RenderEmptyObject.toJson"),
            'dsseEnvelope': throw UnimplementedError("RenderEmptyObject.toJson"),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          mediaType,
          verificationMaterial,
          dsseEnvelope,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;listAttestations200ResponseAttestationsInnerBundle
            && mediaType == other.mediaType
            && verificationMaterial == other.verificationMaterial
            && dsseEnvelope == other.dsseEnvelope
        ;
    }
}
