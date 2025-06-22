import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/packages/get_all_package_versions_for_package_owned_by_authenticated_user_parameter4.dart';
import 'package:github/model/packages/get_all_package_versions_for_package_owned_by_authenticated_user_parameter4.dart';
enum Packages&#x2F;getAllPackageVersionsForPackageOwnedByAuthenticatedUserParameter4 {
    active._('active'),
    deleted._('deleted'),
    ;

    const Packages&#x2F;getAllPackageVersionsForPackageOwnedByAuthenticatedUserParameter4._(this.value);

    factory Packages&#x2F;getAllPackageVersionsForPackageOwnedByAuthenticatedUserParameter4.fromJson(String json) {
        return Packages&#x2F;getAllPackageVersionsForPackageOwnedByAuthenticatedUserParameter4.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Packages&#x2F;getAllPackageVersionsForPackageOwnedByAuthenticatedUserParameter4 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Packages&#x2F;getAllPackageVersionsForPackageOwnedByAuthenticatedUserParameter4? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Packages&#x2F;getAllPackageVersionsForPackageOwnedByAuthenticatedUserParameter4.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
