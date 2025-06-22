import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/combined-billing-usage.dart';
import 'package:github/model/combined-billing-usage.dart';
@immutable
class Combined-billing-usage {
    Combined-billing-usage(
        { required this.days_left_in_billing_cycle,required this.estimated_paid_storage_for_month,required this.estimated_storage_for_month,
         }
    );

    factory Combined-billing-usage.fromJson(Map<String, dynamic>
        json) {
        return Combined-billing-usage(
            days_left_in_billing_cycle: (json['days_left_in_billing_cycle'] as int).toInt() ,
            estimated_paid_storage_for_month: (json['estimated_paid_storage_for_month'] as int).toInt() ,
            estimated_storage_for_month: (json['estimated_storage_for_month'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Combined-billing-usage? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Combined-billing-usage.fromJson(json);
    }

    final int  days_left_in_billing_cycle;
    final int  estimated_paid_storage_for_month;
    final int  estimated_storage_for_month;


    Map<String, dynamic> toJson() {
        return {
            'days_left_in_billing_cycle': days_left_in_billing_cycle,
            'estimated_paid_storage_for_month': estimated_paid_storage_for_month,
            'estimated_storage_for_month': estimated_storage_for_month,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          days_left_in_billing_cycle,
          estimated_paid_storage_for_month,
          estimated_storage_for_month,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Combined-billing-usage
            && days_left_in_billing_cycle == other.days_left_in_billing_cycle
            && estimated_paid_storage_for_month == other.estimated_paid_storage_for_month
            && estimated_storage_for_month == other.estimated_storage_for_month
        ;
    }
}
