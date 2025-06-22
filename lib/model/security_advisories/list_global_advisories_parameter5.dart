import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter5.dart';
import 'package:github/model/security_advisories/list_global_advisories_parameter5.dart';

sealed class SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter5 {
    static SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter5 fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter5.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter5? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return SecurityAdvisories&#x2F;listGlobalAdvisoriesParameter5.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
