import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
enum App-permissionsSecretScanningAlerts {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsSecretScanningAlerts._(this.value);

    factory App-permissionsSecretScanningAlerts.fromJson(String json) {
        return App-permissionsSecretScanningAlerts.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsSecretScanningAlerts value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsSecretScanningAlerts? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsSecretScanningAlerts.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
