import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/network-configuration.dart';
import 'package:github/model/network-configuration_compute_service.dart';
import 'package:github/model/network-configuration.dart';
import 'package:github/model/network-configuration_compute_service.dart';
@immutable
class Network-configuration {
    Network-configuration(
        { required this.id,required this.name, this.compute_service, this.network_settings_ids = const [],required this.created_on,
         }
    );

    factory Network-configuration.fromJson(Map<String, dynamic>
        json) {
        return Network-configuration(
            id: json['id'] as String ,
            name: json['name'] as String ,
            compute_service: Network-configurationComputeService.maybeFromJson(json['compute_service'] as String?) ,
            network_settings_ids: (json['network_settings_ids'] as List?)?.cast<String>() ,
            created_on: DateTime.parse(json['created_on'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Network-configuration? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Network-configuration.fromJson(json);
    }

    final String  id;
    final String  name;
    final  Network-configurationComputeService? compute_service;
    final  List<String>? network_settings_ids;
    final DateTime  created_on;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'compute_service': compute_service?.toJson(),
            'network_settings_ids': network_settings_ids,
            'created_on': created_on.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          compute_service,
          network_settings_ids,
          created_on,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Network-configuration
            && id == other.id
            && name == other.name
            && compute_service == other.compute_service
            && listsEqual(network_settings_ids, other.network_settings_ids)
            && created_on == other.created_on
        ;
    }
}
