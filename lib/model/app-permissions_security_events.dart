import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_security_events.dart';
enum App-permissionsSecurityEvents {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsSecurityEvents._(this.value);

    factory App-permissionsSecurityEvents.fromJson(String json) {
        return App-permissionsSecurityEvents.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsSecurityEvents value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsSecurityEvents? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsSecurityEvents.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
