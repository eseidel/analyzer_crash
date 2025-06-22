import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/packages/get_all_package_versions_for_package_owned_by_org_parameter5.dart';
import 'package:github/model/packages/get_all_package_versions_for_package_owned_by_org_parameter5.dart';
enum Packages&#x2F;getAllPackageVersionsForPackageOwnedByOrgParameter5 {
    active._('active'),
    deleted._('deleted'),
    ;

    const Packages&#x2F;getAllPackageVersionsForPackageOwnedByOrgParameter5._(this.value);

    factory Packages&#x2F;getAllPackageVersionsForPackageOwnedByOrgParameter5.fromJson(String json) {
        return Packages&#x2F;getAllPackageVersionsForPackageOwnedByOrgParameter5.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Packages&#x2F;getAllPackageVersionsForPackageOwnedByOrgParameter5 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Packages&#x2F;getAllPackageVersionsForPackageOwnedByOrgParameter5? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Packages&#x2F;getAllPackageVersionsForPackageOwnedByOrgParameter5.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
