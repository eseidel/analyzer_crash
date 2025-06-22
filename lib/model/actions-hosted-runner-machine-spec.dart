import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
@immutable
class Actions-hosted-runner-machine-spec {
    Actions-hosted-runner-machine-spec(
        { required this.id,required this.cpu_cores,required this.memory_gb,required this.storage_gb,
         }
    );

    factory Actions-hosted-runner-machine-spec.fromJson(Map<String, dynamic>
        json) {
        return Actions-hosted-runner-machine-spec(
            id: json['id'] as String ,
            cpu_cores: (json['cpu_cores'] as int).toInt() ,
            memory_gb: (json['memory_gb'] as int).toInt() ,
            storage_gb: (json['storage_gb'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-hosted-runner-machine-spec? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-hosted-runner-machine-spec.fromJson(json);
    }

    final String  id;
    final int  cpu_cores;
    final int  memory_gb;
    final int  storage_gb;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'cpu_cores': cpu_cores,
            'memory_gb': memory_gb,
            'storage_gb': storage_gb,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          cpu_cores,
          memory_gb,
          storage_gb,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-hosted-runner-machine-spec
            && id == other.id
            && cpu_cores == other.cpu_cores
            && memory_gb == other.memory_gb
            && storage_gb == other.storage_gb
        ;
    }
}
