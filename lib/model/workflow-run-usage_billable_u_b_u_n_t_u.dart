import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-run-usage_billable_u_b_u_n_t_u_job_runs_inner.dart';
@immutable
class Workflow-run-usageBillableUBUNTU {
    Workflow-run-usageBillableUBUNTU(
        { required this.total_ms,required this.jobs, this.job_runs = const [],
         }
    );

    factory Workflow-run-usageBillableUBUNTU.fromJson(Map<String, dynamic>
        json) {
        return Workflow-run-usageBillableUBUNTU(
            total_ms: (json['total_ms'] as int).toInt() ,
            jobs: (json['jobs'] as int).toInt() ,
            job_runs: (json['job_runs'] as List?)?.map<Workflow-run-usageBillableUBUNTUJobRunsInner>((e) => Workflow-run-usageBillableUBUNTUJobRunsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-run-usageBillableUBUNTU? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Workflow-run-usageBillableUBUNTU.fromJson(json);
    }

    final int  total_ms;
    final int  jobs;
    final  List<Workflow-run-usageBillableUBUNTUJobRunsInner>? job_runs;


    Map<String, dynamic> toJson() {
        return {
            'total_ms': total_ms,
            'jobs': jobs,
            'job_runs': job_runs?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_ms,
          jobs,
          job_runs,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Workflow-run-usageBillableUBUNTU
            && total_ms == other.total_ms
            && jobs == other.jobs
            && listsEqual(job_runs, other.job_runs)
        ;
    }
}
