import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-usage_billable.dart';
import 'package:github/model/workflow-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-usage_billable_w_i_n_d_o_w_s.dart';
import 'package:github/model/workflow-usage_billable.dart';
import 'package:github/model/workflow-usage_billable_u_b_u_n_t_u.dart';
import 'package:github/model/workflow-usage_billable_m_a_c_o_s.dart';
import 'package:github/model/workflow-usage_billable_w_i_n_d_o_w_s.dart';
@immutable
class Workflow-usageBillable {
    Workflow-usageBillable(
        {  this.UBUNTU, this.MACOS, this.WINDOWS,
         }
    );

    factory Workflow-usageBillable.fromJson(Map<String, dynamic>
        json) {
        return Workflow-usageBillable(
            UBUNTU: Workflow-usageBillableUBUNTU.maybeFromJson(json['UBUNTU'] as Map<String, dynamic>?) ,
            MACOS: Workflow-usageBillableMACOS.maybeFromJson(json['MACOS'] as Map<String, dynamic>?) ,
            WINDOWS: Workflow-usageBillableWINDOWS.maybeFromJson(json['WINDOWS'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-usageBillable? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Workflow-usageBillable.fromJson(json);
    }

    final  Workflow-usageBillableUBUNTU? UBUNTU;
    final  Workflow-usageBillableMACOS? MACOS;
    final  Workflow-usageBillableWINDOWS? WINDOWS;


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
        return other is Workflow-usageBillable
            && UBUNTU == other.UBUNTU
            && MACOS == other.MACOS
            && WINDOWS == other.WINDOWS
        ;
    }
}
