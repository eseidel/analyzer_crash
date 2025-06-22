import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/users/list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github/model/users/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/users/list_attestations200_response_attestations_inner_bundle.dart';
@immutable
class Users&#x2F;listAttestations200ResponseAttestationsInner {
    Users&#x2F;listAttestations200ResponseAttestationsInner(
        {  this.bundle, this.repository_id, this.bundle_url,
         }
    );

    factory Users&#x2F;listAttestations200ResponseAttestationsInner.fromJson(Map<String, dynamic>
        json) {
        return Users&#x2F;listAttestations200ResponseAttestationsInner(
            bundle: Users/listAttestations200ResponseAttestationsInnerBundle.maybeFromJson(json['bundle'] as Map<String, dynamic>?) ,
            repository_id: (json['repository_id'] as int?).toInt() ,
            bundle_url: json['bundle_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;listAttestations200ResponseAttestationsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;listAttestations200ResponseAttestationsInner.fromJson(json);
    }

    final  Users/listAttestations200ResponseAttestationsInnerBundle? bundle;
    final  int? repository_id;
    final  String? bundle_url;


    Map<String, dynamic> toJson() {
        return {
            'bundle': bundle?.toJson(),
            'repository_id': repository_id,
            'bundle_url': bundle_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          bundle,
          repository_id,
          bundle_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Users&#x2F;listAttestations200ResponseAttestationsInner
            && bundle == other.bundle
            && repository_id == other.repository_id
            && bundle_url == other.bundle_url
        ;
    }
}
