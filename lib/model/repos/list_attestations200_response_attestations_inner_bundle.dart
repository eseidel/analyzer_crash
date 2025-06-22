import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github/model/repos/list_attestations200_response_attestations_inner_bundle.dart';
@immutable
class Repos&#x2F;listAttestations200ResponseAttestationsInnerBundle {
    Repos&#x2F;listAttestations200ResponseAttestationsInnerBundle(
        {  this.mediaType, this.verificationMaterial, this.dsseEnvelope,
         }
    );

    factory Repos&#x2F;listAttestations200ResponseAttestationsInnerBundle.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;listAttestations200ResponseAttestationsInnerBundle(
            mediaType: json['mediaType'] as String? ,
            verificationMaterial: throw UnimplementedError("RenderEmptyObject.fromJson"),
            dsseEnvelope: throw UnimplementedError("RenderEmptyObject.fromJson"),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;listAttestations200ResponseAttestationsInnerBundle? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;listAttestations200ResponseAttestationsInnerBundle.fromJson(json);
    }

    final  String? mediaType;
    final  Repos/listAttestations200ResponseAttestationsInnerBundleVerificationMaterial? verificationMaterial;
    final  Repos/listAttestations200ResponseAttestationsInnerBundleDsseEnvelope? dsseEnvelope;


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
        return other is Repos&#x2F;listAttestations200ResponseAttestationsInnerBundle
            && mediaType == other.mediaType
            && verificationMaterial == other.verificationMaterial
            && dsseEnvelope == other.dsseEnvelope
        ;
    }
}
