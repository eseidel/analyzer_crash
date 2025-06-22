import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-organization-seat-breakdown.dart';
import 'package:github/model/copilot-organization-seat-breakdown.dart';
@immutable
class Copilot-organization-seat-breakdown {
    Copilot-organization-seat-breakdown(
        {  this.total, this.added_this_cycle, this.pending_cancellation, this.pending_invitation, this.active_this_cycle, this.inactive_this_cycle,
         }
    );

    factory Copilot-organization-seat-breakdown.fromJson(Map<String, dynamic>
        json) {
        return Copilot-organization-seat-breakdown(
            total: (json['total'] as int?).toInt() ,
            added_this_cycle: (json['added_this_cycle'] as int?).toInt() ,
            pending_cancellation: (json['pending_cancellation'] as int?).toInt() ,
            pending_invitation: (json['pending_invitation'] as int?).toInt() ,
            active_this_cycle: (json['active_this_cycle'] as int?).toInt() ,
            inactive_this_cycle: (json['inactive_this_cycle'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-organization-seat-breakdown? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-organization-seat-breakdown.fromJson(json);
    }

    final  int? total;
    final  int? added_this_cycle;
    final  int? pending_cancellation;
    final  int? pending_invitation;
    final  int? active_this_cycle;
    final  int? inactive_this_cycle;


    Map<String, dynamic> toJson() {
        return {
            'total': total,
            'added_this_cycle': added_this_cycle,
            'pending_cancellation': pending_cancellation,
            'pending_invitation': pending_invitation,
            'active_this_cycle': active_this_cycle,
            'inactive_this_cycle': inactive_this_cycle,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total,
          added_this_cycle,
          pending_cancellation,
          pending_invitation,
          active_this_cycle,
          inactive_this_cycle,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-organization-seat-breakdown
            && total == other.total
            && added_this_cycle == other.added_this_cycle
            && pending_cancellation == other.pending_cancellation
            && pending_invitation == other.pending_invitation
            && active_this_cycle == other.active_this_cycle
            && inactive_this_cycle == other.inactive_this_cycle
        ;
    }
}
