import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-alert_validity.dart';
import 'package:github/model/secret-scanning-alert_validity.dart';
enum Secret-scanning-alertValidity {
    active._('active'),
    inactive._('inactive'),
    unknown._('unknown'),
    ;

    const Secret-scanning-alertValidity._(this.value);

    factory Secret-scanning-alertValidity.fromJson(String json) {
        return Secret-scanning-alertValidity.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Secret-scanning-alertValidity value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-alertValidity? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-alertValidity.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
