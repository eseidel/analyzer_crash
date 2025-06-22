import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_attestation_request_bundle.dart';
import 'package:github/model/repos/create_attestation_request_bundle.dart';
@immutable
class Repos&#x2F;createAttestationRequestBundle {
    Repos&#x2F;createAttestationRequestBundle(
        {  this.mediaType, this.verificationMaterial, this.dsseEnvelope,
         }
    );

    factory Repos&#x2F;createAttestationRequestBundle.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createAttestationRequestBundle(
            mediaType: json['mediaType'] as String? ,
            verificationMaterial: throw UnimplementedError("RenderEmptyObject.fromJson"),
            dsseEnvelope: throw UnimplementedError("RenderEmptyObject.fromJson"),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createAttestationRequestBundle? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createAttestationRequestBundle.fromJson(json);
    }

    final  String? mediaType;
    final  Repos/createAttestationRequestBundleVerificationMaterial? verificationMaterial;
    final  Repos/createAttestationRequestBundleDsseEnvelope? dsseEnvelope;


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
        return other is Repos&#x2F;createAttestationRequestBundle
            && mediaType == other.mediaType
            && verificationMaterial == other.verificationMaterial
            && dsseEnvelope == other.dsseEnvelope
        ;
    }
}
