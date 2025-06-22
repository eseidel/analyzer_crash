import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-code-scanning_parameters.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
import 'package:github/model/repository-rule-code-scanning_parameters.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
@immutable
class Repository-rule-code-scanningParameters {
    Repository-rule-code-scanningParameters(
        {  this.code_scanning_tools = const [],
         }
    );

    factory Repository-rule-code-scanningParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-code-scanningParameters(
            code_scanning_tools: (json['code_scanning_tools'] as List).map<Repository-rule-params-code-scanning-tool>((e) => Repository-rule-params-code-scanning-tool.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-code-scanningParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-code-scanningParameters.fromJson(json);
    }

    final List<Repository-rule-params-code-scanning-tool>  code_scanning_tools;


    Map<String, dynamic> toJson() {
        return {
            'code_scanning_tools': code_scanning_tools.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
          code_scanning_tools.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-code-scanningParameters
            && listsEqual(code_scanning_tools, other.code_scanning_tools)
        ;
    }
}
