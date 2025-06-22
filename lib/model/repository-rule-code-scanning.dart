import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-code-scanning.dart';
import 'package:github/model/repository-rule-code-scanning_type.dart';
import 'package:github/model/repository-rule-code-scanning_parameters.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
import 'package:github/model/repository-rule-code-scanning.dart';
import 'package:github/model/repository-rule-code-scanning_type.dart';
import 'package:github/model/repository-rule-code-scanning_parameters.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
@immutable
class Repository-rule-code-scanning {
    Repository-rule-code-scanning(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-code-scanning.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-code-scanning(
            type: Repository-rule-code-scanningType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-code-scanningParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-code-scanning? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-code-scanning.fromJson(json);
    }

    final Repository-rule-code-scanningType  type;
    final  Repository-rule-code-scanningParameters? parameters;


    Map<String, dynamic> toJson() {
        return {
            'type': type.toJson(),
            'parameters': parameters?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          parameters,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-code-scanning
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
