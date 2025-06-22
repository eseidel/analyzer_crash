import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-code-scanning_type.dart';
import 'package:github/model/repository-rule-code-scanning_parameters.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-code-scanning_type.dart';
import 'package:github/model/repository-rule-code-scanning_parameters.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
@immutable
class Repository-rule-detailed {
    Repository-rule-detailed(
        {  this.type, this.parameters, this.ruleset_source_type, this.ruleset_source, this.ruleset_id,
         }
    );

    factory Repository-rule-detailed.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-detailed(
            type: Repository-rule-code-scanningType.maybeFromJson(json['type'] as String?) ,
            parameters: Repository-rule-code-scanningParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
            ruleset_source_type: Repository-rule-ruleset-infoRulesetSourceType.maybeFromJson(json['ruleset_source_type'] as String?) ,
            ruleset_source: json['ruleset_source'] as String? ,
            ruleset_id: (json['ruleset_id'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-detailed? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-detailed.fromJson(json);
    }

    final  Repository-rule-code-scanningType? type;
    final  Repository-rule-code-scanningParameters? parameters;
    final  Repository-rule-ruleset-infoRulesetSourceType? ruleset_source_type;
    final  String? ruleset_source;
    final  int? ruleset_id;


    Map<String, dynamic> toJson() {
        return {
            'type': type?.toJson(),
            'parameters': parameters?.toJson(),
            'ruleset_source_type': ruleset_source_type?.toJson(),
            'ruleset_source': ruleset_source,
            'ruleset_id': ruleset_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          parameters,
          ruleset_source_type,
          ruleset_source,
          ruleset_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-detailed
            && type == other.type
            && parameters == other.parameters
            && ruleset_source_type == other.ruleset_source_type
            && ruleset_source == other.ruleset_source
            && ruleset_id == other.ruleset_id
        ;
    }
}
