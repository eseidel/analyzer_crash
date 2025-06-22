import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/network-configuration_compute_service.dart';
import 'package:github/model/network-configuration_compute_service.dart';
enum Network-configurationComputeService {
    none._('none'),
    actions._('actions'),
    codespaces._('codespaces'),
    ;

    const Network-configurationComputeService._(this.value);

    factory Network-configurationComputeService.fromJson(String json) {
        return Network-configurationComputeService.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Network-configurationComputeService value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Network-configurationComputeService? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Network-configurationComputeService.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
