import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/api-overview_domains_artifact_attestations.dart';
import 'package:github/model/api-overview_domains_artifact_attestations.dart';
@immutable
class Api-overviewDomainsArtifactAttestations {
    Api-overviewDomainsArtifactAttestations(
        {  this.trust_domain, this.services = const [],
         }
    );

    factory Api-overviewDomainsArtifactAttestations.fromJson(Map<String, dynamic>
        json) {
        return Api-overviewDomainsArtifactAttestations(
            trust_domain: json['trust_domain'] as String? ,
            services: (json['services'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Api-overviewDomainsArtifactAttestations? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Api-overviewDomainsArtifactAttestations.fromJson(json);
    }

    final  String? trust_domain;
    final  List<String>? services;


    Map<String, dynamic> toJson() {
        return {
            'trust_domain': trust_domain,
            'services': services,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          trust_domain,
          services,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Api-overviewDomainsArtifactAttestations
            && trust_domain == other.trust_domain
            && listsEqual(services, other.services)
        ;
    }
}
