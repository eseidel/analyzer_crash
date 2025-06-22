import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/network-settings.dart';
import 'package:github/model/network-settings.dart';
@immutable
class Network-settings {
    Network-settings(
        { required this.id, this.network_configuration_id,required this.name,required this.subnet_id,required this.region,
         }
    );

    factory Network-settings.fromJson(Map<String, dynamic>
        json) {
        return Network-settings(
            id: json['id'] as String ,
            network_configuration_id: json['network_configuration_id'] as String? ,
            name: json['name'] as String ,
            subnet_id: json['subnet_id'] as String ,
            region: json['region'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Network-settings? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Network-settings.fromJson(json);
    }

    final String  id;
    final  String? network_configuration_id;
    final String  name;
    final String  subnet_id;
    final String  region;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'network_configuration_id': network_configuration_id,
            'name': name,
            'subnet_id': subnet_id,
            'region': region,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          network_configuration_id,
          name,
          subnet_id,
          region,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Network-settings
            && id == other.id
            && network_configuration_id == other.network_configuration_id
            && name == other.name
            && subnet_id == other.subnet_id
            && region == other.region
        ;
    }
}
