import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
@immutable
class Repository-rule-params-code-scanning-tool {
    Repository-rule-params-code-scanning-tool(
        { required this.alerts_threshold,required this.security_alerts_threshold,required this.tool,
         }
    );

    factory Repository-rule-params-code-scanning-tool.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-params-code-scanning-tool(
            alerts_threshold: Repository-rule-params-code-scanning-toolAlertsThreshold.fromJson(json['alerts_threshold'] as String) ,
            security_alerts_threshold: Repository-rule-params-code-scanning-toolSecurityAlertsThreshold.fromJson(json['security_alerts_threshold'] as String) ,
            tool: json['tool'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-params-code-scanning-tool? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-params-code-scanning-tool.fromJson(json);
    }

    final Repository-rule-params-code-scanning-toolAlertsThreshold  alerts_threshold;
    final Repository-rule-params-code-scanning-toolSecurityAlertsThreshold  security_alerts_threshold;
    final String  tool;


    Map<String, dynamic> toJson() {
        return {
            'alerts_threshold': alerts_threshold.toJson(),
            'security_alerts_threshold': security_alerts_threshold.toJson(),
            'tool': tool,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          alerts_threshold,
          security_alerts_threshold,
          tool,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-params-code-scanning-tool
            && alerts_threshold == other.alerts_threshold
            && security_alerts_threshold == other.security_alerts_threshold
            && tool == other.tool
        ;
    }
}
