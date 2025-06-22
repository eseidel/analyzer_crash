import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-usage_billable_u_b_u_n_t_u.dart';
@immutable
class Workflow-usageBillableUBUNTU {
    Workflow-usageBillableUBUNTU(
        {  this.total_ms,
         }
    );

    factory Workflow-usageBillableUBUNTU.fromJson(Map<String, dynamic>
        json) {
        return Workflow-usageBillableUBUNTU(
            total_ms: (json['total_ms'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-usageBillableUBUNTU? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Workflow-usageBillableUBUNTU.fromJson(json);
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
        return other is Workflow-usageBillableUBUNTU
            && total_ms == other.total_ms
        ;
    }
}
