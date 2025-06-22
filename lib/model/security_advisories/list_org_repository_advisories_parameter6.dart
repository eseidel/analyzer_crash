import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security_advisories/list_org_repository_advisories_parameter6.dart';
import 'package:github/model/security_advisories/list_org_repository_advisories_parameter6.dart';
enum SecurityAdvisories&#x2F;listOrgRepositoryAdvisoriesParameter6 {
    triage._('triage'),
    draft._('draft'),
    published._('published'),
    closed._('closed'),
    ;

    const SecurityAdvisories&#x2F;listOrgRepositoryAdvisoriesParameter6._(this.value);

    factory SecurityAdvisories&#x2F;listOrgRepositoryAdvisoriesParameter6.fromJson(String json) {
        return SecurityAdvisories&#x2F;listOrgRepositoryAdvisoriesParameter6.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown SecurityAdvisories&#x2F;listOrgRepositoryAdvisoriesParameter6 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static SecurityAdvisories&#x2F;listOrgRepositoryAdvisoriesParameter6? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return SecurityAdvisories&#x2F;listOrgRepositoryAdvisoriesParameter6.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
