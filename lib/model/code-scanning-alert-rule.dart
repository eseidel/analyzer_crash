import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert-rule.dart';
import 'package:github/model/code-scanning-alert-rule_severity.dart';
import 'package:github/model/code-scanning-alert-rule_security_severity_level.dart';
import 'package:github/model/code-scanning-alert-rule.dart';
import 'package:github/model/code-scanning-alert-rule_severity.dart';
import 'package:github/model/code-scanning-alert-rule_security_severity_level.dart';
@immutable
class Code-scanning-alert-rule {
    Code-scanning-alert-rule(
        {  this.id, this.name, this.severity, this.security_severity_level, this.description, this.full_description, this.tags = const [], this.help, this.help_uri,
         }
    );

    factory Code-scanning-alert-rule.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-alert-rule(
            id: json['id'] as String? ,
            name: json['name'] as String? ,
            severity: Code-scanning-alert-ruleSeverity.maybeFromJson(json['severity'] as String?) ,
            security_severity_level: Code-scanning-alert-ruleSecuritySeverityLevel.maybeFromJson(json['security_severity_level'] as String?) ,
            description: json['description'] as String? ,
            full_description: json['full_description'] as String? ,
            tags: (json['tags'] as List?)?.cast<String>() ,
            help: json['help'] as String? ,
            help_uri: json['help_uri'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-alert-rule? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-alert-rule.fromJson(json);
    }

    final  String? id;
    final  String? name;
    final  Code-scanning-alert-ruleSeverity? severity;
    final  Code-scanning-alert-ruleSecuritySeverityLevel? security_severity_level;
    final  String? description;
    final  String? full_description;
    final  List<String>? tags;
    final  String? help;
    final  String? help_uri;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'severity': severity?.toJson(),
            'security_severity_level': security_severity_level?.toJson(),
            'description': description,
            'full_description': full_description,
            'tags': tags,
            'help': help,
            'help_uri': help_uri,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          severity,
          security_severity_level,
          description,
          full_description,
          tags,
          help,
          help_uri,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-alert-rule
            && id == other.id
            && name == other.name
            && severity == other.severity
            && security_severity_level == other.security_severity_level
            && description == other.description
            && full_description == other.full_description
            && listsEqual(tags, other.tags)
            && help == other.help
            && help_uri == other.help_uri
        ;
    }
}
