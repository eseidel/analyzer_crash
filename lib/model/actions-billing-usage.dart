import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-billing-usage.dart';
import 'package:github/model/actions-billing-usage_minutes_used_breakdown.dart';
import 'package:github/model/actions-billing-usage.dart';
import 'package:github/model/actions-billing-usage_minutes_used_breakdown.dart';
@immutable
class Actions-billing-usage {
    Actions-billing-usage(
        { required this.total_minutes_used,required this.total_paid_minutes_used,required this.included_minutes,required this.minutes_used_breakdown,
         }
    );

    factory Actions-billing-usage.fromJson(Map<String, dynamic>
        json) {
        return Actions-billing-usage(
            total_minutes_used: (json['total_minutes_used'] as int).toInt() ,
            total_paid_minutes_used: (json['total_paid_minutes_used'] as int).toInt() ,
            included_minutes: (json['included_minutes'] as int).toInt() ,
            minutes_used_breakdown: Actions-billing-usageMinutesUsedBreakdown.fromJson(json['minutes_used_breakdown'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-billing-usage? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-billing-usage.fromJson(json);
    }

    final int  total_minutes_used;
    final int  total_paid_minutes_used;
    final int  included_minutes;
    final Actions-billing-usageMinutesUsedBreakdown  minutes_used_breakdown;


    Map<String, dynamic> toJson() {
        return {
            'total_minutes_used': total_minutes_used,
            'total_paid_minutes_used': total_paid_minutes_used,
            'included_minutes': included_minutes,
            'minutes_used_breakdown': minutes_used_breakdown.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_minutes_used,
          total_paid_minutes_used,
          included_minutes,
          minutes_used_breakdown,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-billing-usage
            && total_minutes_used == other.total_minutes_used
            && total_paid_minutes_used == other.total_paid_minutes_used
            && included_minutes == other.included_minutes
            && minutes_used_breakdown == other.minutes_used_breakdown
        ;
    }
}
