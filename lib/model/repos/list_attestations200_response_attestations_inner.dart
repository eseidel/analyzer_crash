import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/repos/list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github/model/repos/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/repos/list_attestations200_response_attestations_inner_bundle.dart';
@immutable
class Repos&#x2F;listAttestations200ResponseAttestationsInner {
    Repos&#x2F;listAttestations200ResponseAttestationsInner(
        {  this.bundle, this.repository_id, this.bundle_url,
         }
    );

    factory Repos&#x2F;listAttestations200ResponseAttestationsInner.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;listAttestations200ResponseAttestationsInner(
            bundle: Repos/listAttestations200ResponseAttestationsInnerBundle.maybeFromJson(json['bundle'] as Map<String, dynamic>?) ,
            repository_id: (json['repository_id'] as int?).toInt() ,
            bundle_url: json['bundle_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;listAttestations200ResponseAttestationsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;listAttestations200ResponseAttestationsInner.fromJson(json);
    }

    final  Repos/listAttestations200ResponseAttestationsInnerBundle? bundle;
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
        return other is Repos&#x2F;listAttestations200ResponseAttestationsInner
            && bundle == other.bundle
            && repository_id == other.repository_id
            && bundle_url == other.bundle_url
        ;
    }
}
