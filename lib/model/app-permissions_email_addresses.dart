import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
enum App-permissionsEmailAddresses {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsEmailAddresses._(this.value);

    factory App-permissionsEmailAddresses.fromJson(String json) {
        return App-permissionsEmailAddresses.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsEmailAddresses value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsEmailAddresses? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsEmailAddresses.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
