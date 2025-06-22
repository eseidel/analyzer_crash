import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup_threat_model.dart';
import 'package:github/model/code-scanning-default-setup_threat_model.dart';
enum Code-scanning-default-setupThreatModel {
    remote._('remote'),
    remoteAndLocal._('remote_and_local'),
    ;

    const Code-scanning-default-setupThreatModel._(this.value);

    factory Code-scanning-default-setupThreatModel.fromJson(String json) {
        return Code-scanning-default-setupThreatModel.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-default-setupThreatModel value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setupThreatModel? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setupThreatModel.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
