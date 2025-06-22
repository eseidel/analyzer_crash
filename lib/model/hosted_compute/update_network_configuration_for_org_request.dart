import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/hosted_compute/update_network_configuration_for_org_request.dart';
import 'package:github/model/hosted_compute/update_network_configuration_for_org_request_compute_service.dart';
import 'package:github/model/hosted_compute/update_network_configuration_for_org_request.dart';
import 'package:github/model/hosted_compute/update_network_configuration_for_org_request_compute_service.dart';
@immutable
class HostedCompute&#x2F;updateNetworkConfigurationForOrgRequest {
    HostedCompute&#x2F;updateNetworkConfigurationForOrgRequest(
        {  this.name, this.compute_service, this.network_settings_ids = const [],
         }
    );

    factory HostedCompute&#x2F;updateNetworkConfigurationForOrgRequest.fromJson(Map<String, dynamic>
        json) {
        return HostedCompute&#x2F;updateNetworkConfigurationForOrgRequest(
            name: json['name'] as String? ,
            compute_service: HostedCompute/updateNetworkConfigurationForOrgRequestComputeService.maybeFromJson(json['compute_service'] as String?) ,
            network_settings_ids: (json['network_settings_ids'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static HostedCompute&#x2F;updateNetworkConfigurationForOrgRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return HostedCompute&#x2F;updateNetworkConfigurationForOrgRequest.fromJson(json);
    }

    final  String? name;
    final  HostedCompute/updateNetworkConfigurationForOrgRequestComputeService? compute_service;
    final  List<String>? network_settings_ids;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'compute_service': compute_service?.toJson(),
            'network_settings_ids': network_settings_ids,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          compute_service,
          network_settings_ids,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is HostedCompute&#x2F;updateNetworkConfigurationForOrgRequest
            && name == other.name
            && compute_service == other.compute_service
            && listsEqual(network_settings_ids, other.network_settings_ids)
        ;
    }
}
