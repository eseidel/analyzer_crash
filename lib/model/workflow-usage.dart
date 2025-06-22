import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-usage.dart';
import 'package:github/model/workflow-usage_billable.dart';
import 'package:github/model/workflow-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-usage_billable_w_i_n_d_o_w_s.dart';
import 'package:github/model/workflow-usage.dart';
import 'package:github/model/workflow-usage_billable.dart';
import 'package:github/model/workflow-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-usage_billable_w_i_n_d_o_w_s.dart';
@immutable
class Workflow-usage {
    Workflow-usage(
        { required this.billable,
         }
    );

    factory Workflow-usage.fromJson(Map<String, dynamic>
        json) {
        return Workflow-usage(
            billable: Workflow-usageBillable.fromJson(json['billable'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-usage? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Workflow-usage.fromJson(json);
    }

    final Workflow-usageBillable  billable;


    Map<String, dynamic> toJson() {
        return {
            'billable': billable.toJson(),
        };
    }

    @override
    int get hashCode =>
          billable.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Workflow-usage
            && billable == other.billable
        ;
    }
}
