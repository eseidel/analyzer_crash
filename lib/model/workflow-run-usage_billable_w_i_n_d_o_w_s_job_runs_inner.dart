import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_w_i_n_d_o_w_s_job_runs_inner.dart';
@immutable
class Workflow-run-usageBillableWINDOWSJobRunsInner {
    Workflow-run-usageBillableWINDOWSJobRunsInner(
        { required this.job_id,required this.duration_ms,
         }
    );

    factory Workflow-run-usageBillableWINDOWSJobRunsInner.fromJson(Map<String, dynamic>
        json) {
        return Workflow-run-usageBillableWINDOWSJobRunsInner(
            job_id: (json['job_id'] as int).toInt() ,
            duration_ms: (json['duration_ms'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-run-usageBillableWINDOWSJobRunsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Workflow-run-usageBillableWINDOWSJobRunsInner.fromJson(json);
    }

    final int  job_id;
    final int  duration_ms;


    Map<String, dynamic> toJson() {
        return {
            'job_id': job_id,
            'duration_ms': duration_ms,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          job_id,
          duration_ms,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Workflow-run-usageBillableWINDOWSJobRunsInner
            && job_id == other.job_id
            && duration_ms == other.duration_ms
        ;
    }
}
