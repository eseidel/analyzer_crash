import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-usage_billable_w_i_n_d_o_w_s.dart';
import 'package:github/model/workflow-usage_billable_w_i_n_d_o_w_s.dart';
@immutable
class Workflow-usageBillableWINDOWS {
    Workflow-usageBillableWINDOWS(
        {  this.total_ms,
         }
    );

    factory Workflow-usageBillableWINDOWS.fromJson(Map<String, dynamic>
        json) {
        return Workflow-usageBillableWINDOWS(
            total_ms: (json['total_ms'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-usageBillableWINDOWS? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Workflow-usageBillableWINDOWS.fromJson(json);
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
        return other is Workflow-usageBillableWINDOWS
            && total_ms == other.total_ms
        ;
    }
}
