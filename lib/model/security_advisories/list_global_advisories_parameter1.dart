import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter1.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter1.dart';
enum SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter1 {
    reviewed._('reviewed'),
    malware._('malware'),
    unreviewed._('unreviewed'),
    ;

    const SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter1._(this.value);

    factory SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter1.fromJson(String json) {
        return SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter1.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter1 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter1? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter1.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
