import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/hosted_compute/list_network_configurations_for_org200_response.dart';
import 'package:github/model/network-configuration.dart';
import 'package:github/model/network-configuration_compute_service.dart';
import 'package:github/model/hosted_compute/list_network_configurations_for_org200_response.dart';
import 'package:github/model/network-configuration.dart';
import 'package:github/model/network-configuration_compute_service.dart';
@immutable
class HostedCompute&#x2F;listNetworkConfigurationsForOrg200Response {
    HostedCompute&#x2F;listNetworkConfigurationsForOrg200Response(
        { required this.total_count, this.network_configurations = const [],
         }
    );

    factory HostedCompute&#x2F;listNetworkConfigurationsForOrg200Response.fromJson(Map<String, dynamic>
        json) {
        return HostedCompute&#x2F;listNetworkConfigurationsForOrg200Response(
            total_count: (json['total_count'] as int).toInt() ,
            network_configurations: (json['network_configurations'] as List).map<Network-configuration>((e) => Network-configuration.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static HostedCompute&#x2F;listNetworkConfigurationsForOrg200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return HostedCompute&#x2F;listNetworkConfigurationsForOrg200Response.fromJson(json);
    }

    final int  total_count;
    final List<Network-configuration>  network_configurations;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'network_configurations': network_configurations.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          network_configurations,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is HostedCompute&#x2F;listNetworkConfigurationsForOrg200Response
            && total_count == other.total_count
            && listsEqual(network_configurations, other.network_configurations)
        ;
    }
}
