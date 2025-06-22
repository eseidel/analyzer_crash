import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/api-overview_ssh_key_fingerprints.dart';
import 'package:github/model/api-overview_ssh_key_fingerprints.dart';
@immutable
class Api-overviewSshKeyFingerprints {
    Api-overviewSshKeyFingerprints(
        {  this.SHA256_RSA, this.SHA256_DSA, this.SHA256_ECDSA, this.SHA256_ED25519,
         }
    );

    factory Api-overviewSshKeyFingerprints.fromJson(Map<String, dynamic>
        json) {
        return Api-overviewSshKeyFingerprints(
            SHA256_RSA: json['SHA256_RSA'] as String? ,
            SHA256_DSA: json['SHA256_DSA'] as String? ,
            SHA256_ECDSA: json['SHA256_ECDSA'] as String? ,
            SHA256_ED25519: json['SHA256_ED25519'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Api-overviewSshKeyFingerprints? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Api-overviewSshKeyFingerprints.fromJson(json);
    }

    final  String? SHA256_RSA;
    final  String? SHA256_DSA;
    final  String? SHA256_ECDSA;
    final  String? SHA256_ED25519;


    Map<String, dynamic> toJson() {
        return {
            'SHA256_RSA': SHA256_RSA,
            'SHA256_DSA': SHA256_DSA,
            'SHA256_ECDSA': SHA256_ECDSA,
            'SHA256_ED25519': SHA256_ED25519,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          SHA256_RSA,
          SHA256_DSA,
          SHA256_ECDSA,
          SHA256_ED25519,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Api-overviewSshKeyFingerprints
            && SHA256_RSA == other.SHA256_RSA
            && SHA256_DSA == other.SHA256_DSA
            && SHA256_ECDSA == other.SHA256_ECDSA
            && SHA256_ED25519 == other.SHA256_ED25519
        ;
    }
}
