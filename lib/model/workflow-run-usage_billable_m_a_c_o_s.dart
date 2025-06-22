import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s_job_runs_inner.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-run-usage_billable_m_a_c_o_s_job_runs_inner.dart';
@immutable
class Workflow-run-usageBillableMACOS {
    Workflow-run-usageBillableMACOS(
        { required this.total_ms,required this.jobs, this.job_runs = const [],
         }
    );

    factory Workflow-run-usageBillableMACOS.fromJson(Map<String, dynamic>
        json) {
        return Workflow-run-usageBillableMACOS(
            total_ms: (json['total_ms'] as int).toInt() ,
            jobs: (json['jobs'] as int).toInt() ,
            job_runs: (json['job_runs'] as List?)?.map<Workflow-run-usageBillableMACOSJobRunsInner>((e) => Workflow-run-usageBillableMACOSJobRunsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-run-usageBillableMACOS? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Workflow-run-usageBillableMACOS.fromJson(json);
    }

    final int  total_ms;
    final int  jobs;
    final  List<Workflow-run-usageBillableMACOSJobRunsInner>? job_runs;


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
        return other is Workflow-run-usageBillableMACOS
            && total_ms == other.total_ms
            && jobs == other.jobs
            && listsEqual(job_runs, other.job_runs)
        ;
    }
}
