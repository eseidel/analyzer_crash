import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-usage_billable_m_a_c_o_s.dart';
@immutable
class Workflow-usageBillableMACOS {
    Workflow-usageBillableMACOS(
        {  this.total_ms,
         }
    );

    factory Workflow-usageBillableMACOS.fromJson(Map<String, dynamic>
        json) {
        return Workflow-usageBillableMACOS(
            total_ms: (json['total_ms'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-usageBillableMACOS? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Workflow-usageBillableMACOS.fromJson(json);
    }

    final  int? total_ms;


    Map<String, dynamic> toJson() {
        return {
            'total_ms': total_ms,
        };
    }

    @override
    int get hashCode =>
          total_ms.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Workflow-usageBillableMACOS
            && total_ms == other.total_ms
        ;
    }
}
