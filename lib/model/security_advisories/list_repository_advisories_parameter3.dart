import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security_advisories/list_repository_advisories_parameter3.dart';
import 'package:github/model/security_advisories/list_repository_advisories_parameter3.dart';
enum SecurityAdvisories&#x2F;listRepositoryAdvisoriesParameter3 {
    created._('created'),
    updated._('updated'),
    published._('published'),
    ;

    const SecurityAdvisories&#x2F;listRepositoryAdvisoriesParameter3._(this.value);

    factory SecurityAdvisories&#x2F;listRepositoryAdvisoriesParameter3.fromJson(String json) {
        return SecurityAdvisories&#x2F;listRepositoryAdvisoriesParameter3.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown SecurityAdvisories&#x2F;listRepositoryAdvisoriesParameter3 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static SecurityAdvisories&#x2F;listRepositoryAdvisoriesParameter3? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return SecurityAdvisories&#x2F;listRepositoryAdvisoriesParameter3.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
