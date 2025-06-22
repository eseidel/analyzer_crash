import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/marketplace-purchase_marketplace_purchase.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase_marketplace_purchase.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
@immutable
class Marketplace-purchaseMarketplacePurchase {
    Marketplace-purchaseMarketplacePurchase(
        {  this.billing_cycle, this.next_billing_date, this.is_installed, this.unit_count, this.on_free_trial, this.free_trial_ends_on, this.updated_at, this.plan,
         }
    );

    factory Marketplace-purchaseMarketplacePurchase.fromJson(Map<String, dynamic>
        json) {
        return Marketplace-purchaseMarketplacePurchase(
            billing_cycle: json['billing_cycle'] as String? ,
            next_billing_date: json['next_billing_date'] as String? ,
            is_installed: (json['is_installed'] as bool?) ,
            unit_count: (json['unit_count'] as int?).toInt() ,
            on_free_trial: (json['on_free_trial'] as bool?) ,
            free_trial_ends_on: json['free_trial_ends_on'] as String? ,
            updated_at: json['updated_at'] as String? ,
            plan: Marketplace-listing-plan.maybeFromJson(json['plan'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Marketplace-purchaseMarketplacePurchase? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Marketplace-purchaseMarketplacePurchase.fromJson(json);
    }

    final  String? billing_cycle;
    final  String? next_billing_date;
    final  bool? is_installed;
    final  int? unit_count;
    final  bool? on_free_trial;
    final  String? free_trial_ends_on;
    final  String? updated_at;
    final  Marketplace-listing-plan? plan;


    Map<String, dynamic> toJson() {
        return {
            'billing_cycle': billing_cycle,
            'next_billing_date': next_billing_date,
            'is_installed': is_installed,
            'unit_count': unit_count,
            'on_free_trial': on_free_trial,
            'free_trial_ends_on': free_trial_ends_on,
            'updated_at': updated_at,
            'plan': plan?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          billing_cycle,
          next_billing_date,
          is_installed,
          unit_count,
          on_free_trial,
          free_trial_ends_on,
          updated_at,
          plan,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Marketplace-purchaseMarketplacePurchase
            && billing_cycle == other.billing_cycle
            && next_billing_date == other.next_billing_date
            && is_installed == other.is_installed
            && unit_count == other.unit_count
            && on_free_trial == other.on_free_trial
            && free_trial_ends_on == other.free_trial_ends_on
            && updated_at == other.updated_at
            && plan == other.plan
        ;
    }
}
