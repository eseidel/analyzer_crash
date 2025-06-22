import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter17.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter17.dart';
enum SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter17 {
    updated._('updated'),
    published._('published'),
    epssPercentage._('epss_percentage'),
    epssPercentile._('epss_percentile'),
    ;

    const SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter17._(this.value);

    factory SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter17.fromJson(String json) {
        return SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter17.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter17 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter17? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter17.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
