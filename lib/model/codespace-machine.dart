import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespace-machine.dart';
import 'package:github/model/codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace-machine.dart';
import 'package:github/model/codespace-machine_prebuild_availability.dart';
@immutable
class Codespace-machine {
    Codespace-machine(
        { required this.name,required this.display_name,required this.operating_system,required this.storage_in_bytes,required this.memory_in_bytes,required this.cpus,required this.prebuild_availability,
         }
    );

    factory Codespace-machine.fromJson(Map<String, dynamic>
        json) {
        return Codespace-machine(
            name: json['name'] as String ,
            display_name: json['display_name'] as String ,
            operating_system: json['operating_system'] as String ,
            storage_in_bytes: (json['storage_in_bytes'] as int).toInt() ,
            memory_in_bytes: (json['memory_in_bytes'] as int).toInt() ,
            cpus: (json['cpus'] as int).toInt() ,
            prebuild_availability: Codespace-machinePrebuildAvailability.fromJson(json['prebuild_availability'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespace-machine? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespace-machine.fromJson(json);
    }

    final String  name;
    final String  display_name;
    final String  operating_system;
    final int  storage_in_bytes;
    final int  memory_in_bytes;
    final int  cpus;
    final Codespace-machinePrebuildAvailability  prebuild_availability;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'display_name': display_name,
            'operating_system': operating_system,
            'storage_in_bytes': storage_in_bytes,
            'memory_in_bytes': memory_in_bytes,
            'cpus': cpus,
            'prebuild_availability': prebuild_availability.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          display_name,
          operating_system,
          storage_in_bytes,
          memory_in_bytes,
          cpus,
          prebuild_availability,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespace-machine
            && name == other.name
            && display_name == other.display_name
            && operating_system == other.operating_system
            && storage_in_bytes == other.storage_in_bytes
            && memory_in_bytes == other.memory_in_bytes
            && cpus == other.cpus
            && prebuild_availability == other.prebuild_availability
        ;
    }
}
