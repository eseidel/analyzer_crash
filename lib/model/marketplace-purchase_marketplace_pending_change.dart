import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/marketplace-purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
@immutable
class Marketplace-purchaseMarketplacePendingChange {
    Marketplace-purchaseMarketplacePendingChange(
        {  this.is_installed, this.effective_date, this.unit_count, this.id, this.plan,
         }
    );

    factory Marketplace-purchaseMarketplacePendingChange.fromJson(Map<String, dynamic>
        json) {
        return Marketplace-purchaseMarketplacePendingChange(
            is_installed: (json['is_installed'] as bool?) ,
            effective_date: json['effective_date'] as String? ,
            unit_count: (json['unit_count'] as int?).toInt() ,
            id: (json['id'] as int?).toInt() ,
            plan: Marketplace-listing-plan.maybeFromJson(json['plan'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Marketplace-purchaseMarketplacePendingChange? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Marketplace-purchaseMarketplacePendingChange.fromJson(json);
    }

    final  bool? is_installed;
    final  String? effective_date;
    final  int? unit_count;
    final  int? id;
    final  Marketplace-listing-plan? plan;


    Map<String, dynamic> toJson() {
        return {
            'is_installed': is_installed,
            'effective_date': effective_date,
            'unit_count': unit_count,
            'id': id,
            'plan': plan?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          is_installed,
          effective_date,
          unit_count,
          id,
          plan,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Marketplace-purchaseMarketplacePendingChange
            && is_installed == other.is_installed
            && effective_date == other.effective_date
            && unit_count == other.unit_count
            && id == other.id
            && plan == other.plan
        ;
    }
}
