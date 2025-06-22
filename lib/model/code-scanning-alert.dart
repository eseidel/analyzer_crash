import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/alert-instances-url.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
import 'package:github/model/code-scanning-alert-rule.dart';
import 'package:github/model/code-scanning-alert-rule_severity.dart';
import 'package:github/model/code-scanning-alert-rule_security_severity_level.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/alert-instances-url.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
import 'package:github/model/code-scanning-alert-rule.dart';
import 'package:github/model/code-scanning-alert-rule_severity.dart';
import 'package:github/model/code-scanning-alert-rule_security_severity_level.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Code-scanning-alert {
    Code-scanning-alert(
        { required this.number,required this.created_at, this.updated_at,required this.url,required this.html_url,required this.instances_url,required this.state, this.fixed_at,required this.dismissed_by,required this.dismissed_at,required this.dismissed_reason, this.dismissed_comment,required this.rule,required this.tool,required this.most_recent_instance, this.dismissal_approved_by,
         }
    );

    factory Code-scanning-alert.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-alert(
            number: (json['number'] as int).toInt() ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: maybeParseDateTime(json['updated_at'] as String?) ,
            url: Alert-url((json['url'] as String) ),
            html_url: Alert-html-url((json['html_url'] as String) ),
            instances_url: Alert-instances-url((json['instances_url'] as String) ),
            state: Code-scanning-alert-state.fromJson(json['state'] as String) ,
            fixed_at: maybeParseDateTime(json['fixed_at'] as String?) ,
            dismissed_by: Nullable-simple-user.fromJson(json['dismissed_by'] as Map<String, dynamic>) ,
            dismissed_at: DateTime.parse(json['dismissed_at'] as String),
            dismissed_reason: Code-scanning-alert-dismissed-reason.fromJson(json['dismissed_reason'] as String) ,
            dismissed_comment: Code-scanning-alert-dismissed-comment((json['dismissed_comment'] as String?) ),
            rule: Code-scanning-alert-rule.fromJson(json['rule'] as Map<String, dynamic>) ,
            tool: Code-scanning-analysis-tool.fromJson(json['tool'] as Map<String, dynamic>) ,
            most_recent_instance: Code-scanning-alert-instance.fromJson(json['most_recent_instance'] as Map<String, dynamic>) ,
            dismissal_approved_by: Nullable-simple-user.maybeFromJson(json['dismissal_approved_by'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-alert? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-alert.fromJson(json);
    }

    final int  number;
    final DateTime  created_at;
    final  DateTime? updated_at;
    final Alert-url  url;
    final Alert-html-url  html_url;
    final Alert-instances-url  instances_url;
    final Code-scanning-alert-state  state;
    final  DateTime? fixed_at;
    final Nullable-simple-user  dismissed_by;
    final DateTime  dismissed_at;
    final Code-scanning-alert-dismissed-reason  dismissed_reason;
    final  Code-scanning-alert-dismissed-comment? dismissed_comment;
    final Code-scanning-alert-rule  rule;
    final Code-scanning-analysis-tool  tool;
    final Code-scanning-alert-instance  most_recent_instance;
    final  Nullable-simple-user? dismissal_approved_by;


    Map<String, dynamic> toJson() {
        return {
            'number': number,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at?.toIso8601String(),
            'url': url.toJson(),
            'html_url': html_url.toJson(),
            'instances_url': instances_url.toJson(),
            'state': state.toJson(),
            'fixed_at': fixed_at?.toIso8601String(),
            'dismissed_by': dismissed_by.toJson(),
            'dismissed_at': dismissed_at.toIso8601String(),
            'dismissed_reason': dismissed_reason.toJson(),
            'dismissed_comment': dismissed_comment?.toJson(),
            'rule': rule.toJson(),
            'tool': tool.toJson(),
            'most_recent_instance': most_recent_instance.toJson(),
            'dismissal_approved_by': dismissal_approved_by?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          number,
          created_at,
          updated_at,
          url,
          html_url,
          instances_url,
          state,
          fixed_at,
          dismissed_by,
          dismissed_at,
          dismissed_reason,
          dismissed_comment,
          rule,
          tool,
          most_recent_instance,
          dismissal_approved_by,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-alert
            && number == other.number
            && created_at == other.created_at
            && updated_at == other.updated_at
            && url == other.url
            && html_url == other.html_url
            && instances_url == other.instances_url
            && state == other.state
            && fixed_at == other.fixed_at
            && dismissed_by == other.dismissed_by
            && dismissed_at == other.dismissed_at
            && dismissed_reason == other.dismissed_reason
            && dismissed_comment == other.dismissed_comment
            && rule == other.rule
            && tool == other.tool
            && most_recent_instance == other.most_recent_instance
            && dismissal_approved_by == other.dismissal_approved_by
        ;
    }
}
