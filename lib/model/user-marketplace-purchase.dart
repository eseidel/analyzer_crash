import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/user-marketplace-purchase.dart';
import 'package:github/model/marketplace-account.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/user-marketplace-purchase.dart';
import 'package:github/model/marketplace-account.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
@immutable
class User-marketplace-purchase {
    User-marketplace-purchase(
        { required this.billing_cycle,required this.next_billing_date,required this.unit_count,required this.on_free_trial,required this.free_trial_ends_on,required this.updated_at,required this.account,required this.plan,
         }
    );

    factory User-marketplace-purchase.fromJson(Map<String, dynamic>
        json) {
        return User-marketplace-purchase(
            billing_cycle: json['billing_cycle'] as String ,
            next_billing_date: DateTime.parse(json['next_billing_date'] as String),
            unit_count: (json['unit_count'] as int).toInt() ,
            on_free_trial: (json['on_free_trial'] as bool) ,
            free_trial_ends_on: DateTime.parse(json['free_trial_ends_on'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            account: Marketplace-account.fromJson(json['account'] as Map<String, dynamic>) ,
            plan: Marketplace-listing-plan.fromJson(json['plan'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static User-marketplace-purchase? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return User-marketplace-purchase.fromJson(json);
    }

    final String  billing_cycle;
    final DateTime  next_billing_date;
    final int  unit_count;
    final bool  on_free_trial;
    final DateTime  free_trial_ends_on;
    final DateTime  updated_at;
    final Marketplace-account  account;
    final Marketplace-listing-plan  plan;


    Map<String, dynamic> toJson() {
        return {
            'billing_cycle': billing_cycle,
            'next_billing_date': next_billing_date.toIso8601String(),
            'unit_count': unit_count,
            'on_free_trial': on_free_trial,
            'free_trial_ends_on': free_trial_ends_on.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'account': account.toJson(),
            'plan': plan.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          billing_cycle,
          next_billing_date,
          unit_count,
          on_free_trial,
          free_trial_ends_on,
          updated_at,
          account,
          plan,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is User-marketplace-purchase
            && billing_cycle == other.billing_cycle
            && next_billing_date == other.next_billing_date
            && unit_count == other.unit_count
            && on_free_trial == other.on_free_trial
            && free_trial_ends_on == other.free_trial_ends_on
            && updated_at == other.updated_at
            && account == other.account
            && plan == other.plan
        ;
    }
}
