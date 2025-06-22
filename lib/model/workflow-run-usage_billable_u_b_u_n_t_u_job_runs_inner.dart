import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u_job_runs_inner.dart';
@immutable
class Workflow-run-usageBillableUBUNTUJobRunsInner {
    Workflow-run-usageBillableUBUNTUJobRunsInner(
        { required this.job_id,required this.duration_ms,
         }
    );

    factory Workflow-run-usageBillableUBUNTUJobRunsInner.fromJson(Map<String, dynamic>
        json) {
        return Workflow-run-usageBillableUBUNTUJobRunsInner(
            job_id: (json['job_id'] as int).toInt() ,
            duration_ms: (json['duration_ms'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-run-usageBillableUBUNTUJobRunsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Workflow-run-usageBillableUBUNTUJobRunsInner.fromJson(json);
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
        return other is Workflow-run-usageBillableUBUNTUJobRunsInner
            && job_id == other.job_id
            && duration_ms == other.duration_ms
        ;
    }
}
