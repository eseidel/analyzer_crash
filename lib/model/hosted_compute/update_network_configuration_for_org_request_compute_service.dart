import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/hosted_compute/update_network_configuration_for_org_request_compute_service.dart';
import 'package:github/model/hosted_compute/update_network_configuration_for_org_request_compute_service.dart';
enum HostedCompute&#x2F;updateNetworkConfigurationForOrgRequestComputeService {
    none._('none'),
    actions._('actions'),
    ;

    const HostedCompute&#x2F;updateNetworkConfigurationForOrgRequestComputeService._(this.value);

    factory HostedCompute&#x2F;updateNetworkConfigurationForOrgRequestComputeService.fromJson(String json) {
        return HostedCompute&#x2F;updateNetworkConfigurationForOrgRequestComputeService.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown HostedCompute&#x2F;updateNetworkConfigurationForOrgRequestComputeService value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static HostedCompute&#x2F;updateNetworkConfigurationForOrgRequestComputeService? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return HostedCompute&#x2F;updateNetworkConfigurationForOrgRequestComputeService.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
