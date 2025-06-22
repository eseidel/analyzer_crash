import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter4.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter4.dart';
enum SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter4 {
    unknown._('unknown'),
    low._('low'),
    medium._('medium'),
    high._('high'),
    critical._('critical'),
    ;

    const SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter4._(this.value);

    factory SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter4.fromJson(String json) {
        return SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter4.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter4 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter4? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter4.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
