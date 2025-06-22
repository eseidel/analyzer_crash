import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-run-usage_billable.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s_job_runs_inner.dart';
@immutable
class Workflow-run-usageBillable {
    Workflow-run-usageBillable(
        {  this.UBUNTU, this.MACOS, this.WINDOWS,
         }
    );

    factory Workflow-run-usageBillable.fromJson(Map<String, dynamic>
        json) {
        return Workflow-run-usageBillable(
            UBUNTU: Workflow-run-usageBillableUBUNTU.maybeFromJson(json['UBUNTU'] as Map<String, dynamic>?) ,
            MACOS: Workflow-run-usageBillableMACOS.maybeFromJson(json['MACOS'] as Map<String, dynamic>?) ,
            WINDOWS: Workflow-run-usageBillableWINDOWS.maybeFromJson(json['WINDOWS'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-run-usageBillable? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Workflow-run-usageBillable.fromJson(json);
    }

    final  Workflow-run-usageBillableUBUNTU? UBUNTU;
    final  Workflow-run-usageBillableMACOS? MACOS;
    final  Workflow-run-usageBillableWINDOWS? WINDOWS;


    Map<String, dynamic> toJson() {
        return {
            'UBUNTU': UBUNTU?.toJson(),
            'MACOS': MACOS?.toJson(),
            'WINDOWS': WINDOWS?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          UBUNTU,
          MACOS,
          WINDOWS,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Workflow-run-usageBillable
            && UBUNTU == other.UBUNTU
            && MACOS == other.MACOS
            && WINDOWS == other.WINDOWS
        ;
    }
}
