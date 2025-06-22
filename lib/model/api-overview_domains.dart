import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/api-overview_domains.dart';
import 'package:github/model/api-overview_domains_actions_inbound.dart';
import 'package:github/model/api-overview_domains_artifact_attestations.dart';
import 'package:github/model/api-overview_domains.dart';
import 'package:github/model/api-overview_domains_actions_inbound.dart';
import 'package:github/model/api-overview_domains_artifact_attestations.dart';
@immutable
class Api-overviewDomains {
    Api-overviewDomains(
        {  this.website = const [], this.codespaces = const [], this.copilot = const [], this.packages = const [], this.actions = const [], this.actions_inbound, this.artifact_attestations,
         }
    );

    factory Api-overviewDomains.fromJson(Map<String, dynamic>
        json) {
        return Api-overviewDomains(
            website: (json['website'] as List?)?.cast<String>() ,
            codespaces: (json['codespaces'] as List?)?.cast<String>() ,
            copilot: (json['copilot'] as List?)?.cast<String>() ,
            packages: (json['packages'] as List?)?.cast<String>() ,
            actions: (json['actions'] as List?)?.cast<String>() ,
            actions_inbound: Api-overviewDomainsActionsInbound.maybeFromJson(json['actions_inbound'] as Map<String, dynamic>?) ,
            artifact_attestations: Api-overviewDomainsArtifactAttestations.maybeFromJson(json['artifact_attestations'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Api-overviewDomains? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Api-overviewDomains.fromJson(json);
    }

    final  List<String>? website;
    final  List<String>? codespaces;
    final  List<String>? copilot;
    final  List<String>? packages;
    final  List<String>? actions;
    final  Api-overviewDomainsActionsInbound? actions_inbound;
    final  Api-overviewDomainsArtifactAttestations? artifact_attestations;


    Map<String, dynamic> toJson() {
        return {
            'website': website,
            'codespaces': codespaces,
            'copilot': copilot,
            'packages': packages,
            'actions': actions,
            'actions_inbound': actions_inbound?.toJson(),
            'artifact_attestations': artifact_attestations?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          website,
          codespaces,
          copilot,
          packages,
          actions,
          actions_inbound,
          artifact_attestations,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Api-overviewDomains
            && listsEqual(website, other.website)
            && listsEqual(codespaces, other.codespaces)
            && listsEqual(copilot, other.copilot)
            && listsEqual(packages, other.packages)
            && listsEqual(actions, other.actions)
            && actions_inbound == other.actions_inbound
            && artifact_attestations == other.artifact_attestations
        ;
    }
}
