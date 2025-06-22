import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-security-product-enablement.dart';
import 'package:github/model/org-security-product-enablement.dart';
enum Org-security-product-enablement {
    enableAll._('enable_all'),
    disableAll._('disable_all'),
    ;

    const Org-security-product-enablement._(this.value);

    factory Org-security-product-enablement.fromJson(String json) {
        return Org-security-product-enablement.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Org-security-product-enablement value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-security-product-enablement? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Org-security-product-enablement.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
