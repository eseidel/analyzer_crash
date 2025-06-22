import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-run-usage.dart';
import 'package:github/model/workflow-run-usage_billable.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage.dart';
import 'package:github/model/workflow-run-usage_billable.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s_job_runs_inner.dart';
@immutable
class Workflow-run-usage {
    Workflow-run-usage(
        { required this.billable, this.run_duration_ms,
         }
    );

    factory Workflow-run-usage.fromJson(Map<String, dynamic>
        json) {
        return Workflow-run-usage(
            billable: Workflow-run-usageBillable.fromJson(json['billable'] as Map<String, dynamic>) ,
            run_duration_ms: (json['run_duration_ms'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-run-usage? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Workflow-run-usage.fromJson(json);
    }

    final Workflow-run-usageBillable  billable;
    final  int? run_duration_ms;


    Map<String, dynamic> toJson() {
        return {
            'billable': billable.toJson(),
            'run_duration_ms': run_duration_ms,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          billable,
          run_duration_ms,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Workflow-run-usage
            && billable == other.billable
            && run_duration_ms == other.run_duration_ms
        ;
    }
}
