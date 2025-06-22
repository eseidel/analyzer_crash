import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/marketplace-purchase.dart';
import 'package:github/model/marketplace-purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase_marketplace_purchase.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase.dart';
import 'package:github/model/marketplace-purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-purchase_marketplace_purchase.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
@immutable
class Marketplace-purchase {
    Marketplace-purchase(
        { required this.url,required this.type,required this.id,required this.login, this.organization_billing_email, this.email, this.marketplace_pending_change,required this.marketplace_purchase,
         }
    );

    factory Marketplace-purchase.fromJson(Map<String, dynamic>
        json) {
        return Marketplace-purchase(
            url: json['url'] as String ,
            type: json['type'] as String ,
            id: (json['id'] as int).toInt() ,
            login: json['login'] as String ,
            organization_billing_email: json['organization_billing_email'] as String? ,
            email: json['email'] as String? ,
            marketplace_pending_change: Marketplace-purchaseMarketplacePendingChange.maybeFromJson(json['marketplace_pending_change'] as Map<String, dynamic>?) ,
            marketplace_purchase: Marketplace-purchaseMarketplacePurchase.fromJson(json['marketplace_purchase'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Marketplace-purchase? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Marketplace-purchase.fromJson(json);
    }

    final String  url;
    final String  type;
    final int  id;
    final String  login;
    final  String? organization_billing_email;
    final  String? email;
    final  Marketplace-purchaseMarketplacePendingChange? marketplace_pending_change;
    final Marketplace-purchaseMarketplacePurchase  marketplace_purchase;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'type': type,
            'id': id,
            'login': login,
            'organization_billing_email': organization_billing_email,
            'email': email,
            'marketplace_pending_change': marketplace_pending_change?.toJson(),
            'marketplace_purchase': marketplace_purchase.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          type,
          id,
          login,
          organization_billing_email,
          email,
          marketplace_pending_change,
          marketplace_purchase,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Marketplace-purchase
            && url == other.url
            && type == other.type
            && id == other.id
            && login == other.login
            && organization_billing_email == other.organization_billing_email
            && email == other.email
            && marketplace_pending_change == other.marketplace_pending_change
            && marketplace_purchase == other.marketplace_purchase
        ;
    }
}
