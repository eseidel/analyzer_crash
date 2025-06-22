import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-product.dart';
import 'package:github/model/security-product.dart';
enum Security-product {
    dependencyGraph._('dependency_graph'),
    dependabotAlerts._('dependabot_alerts'),
    dependabotSecurityUpdates._('dependabot_security_updates'),
    advancedSecurity._('advanced_security'),
    codeScanningDefaultSetup._('code_scanning_default_setup'),
    secretScanning._('secret_scanning'),
    secretScanningPushProtection._('secret_scanning_push_protection'),
    ;

    const Security-product._(this.value);

    factory Security-product.fromJson(String json) {
        return Security-product.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Security-product value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-product? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Security-product.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
