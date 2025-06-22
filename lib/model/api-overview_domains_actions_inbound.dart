import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/api-overview_domains_actions_inbound.dart';
import 'package:github/model/api-overview_domains_actions_inbound.dart';
@immutable
class Api-overviewDomainsActionsInbound {
    Api-overviewDomainsActionsInbound(
        {  this.full_domains = const [], this.wildcard_domains = const [],
         }
    );

    factory Api-overviewDomainsActionsInbound.fromJson(Map<String, dynamic>
        json) {
        return Api-overviewDomainsActionsInbound(
            full_domains: (json['full_domains'] as List?)?.cast<String>() ,
            wildcard_domains: (json['wildcard_domains'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Api-overviewDomainsActionsInbound? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Api-overviewDomainsActionsInbound.fromJson(json);
    }

    final  List<String>? full_domains;
    final  List<String>? wildcard_domains;


    Map<String, dynamic> toJson() {
        return {
            'full_domains': full_domains,
            'wildcard_domains': wildcard_domains,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          full_domains,
          wildcard_domains,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Api-overviewDomainsActionsInbound
            && listsEqual(full_domains, other.full_domains)
            && listsEqual(wildcard_domains, other.wildcard_domains)
        ;
    }
}
