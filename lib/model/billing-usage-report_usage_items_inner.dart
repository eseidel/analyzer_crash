import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/billing-usage-report_usage_items_inner.dart';
import 'package:github/model/billing-usage-report_usage_items_inner.dart';
@immutable
class Billing-usage-reportUsageItemsInner {
    Billing-usage-reportUsageItemsInner(
        { required this.date,required this.product,required this.sku,required this.quantity,required this.unitType,required this.pricePerUnit,required this.grossAmount,required this.discountAmount,required this.netAmount,required this.organizationName, this.repositoryName,
         }
    );

    factory Billing-usage-reportUsageItemsInner.fromJson(Map<String, dynamic>
        json) {
        return Billing-usage-reportUsageItemsInner(
            date: json['date'] as String ,
            product: json['product'] as String ,
            sku: json['sku'] as String ,
            quantity: (json['quantity'] as int).toInt() ,
            unitType: json['unitType'] as String ,
            pricePerUnit: (json['pricePerUnit'] as num).toDouble() ,
            grossAmount: (json['grossAmount'] as num).toDouble() ,
            discountAmount: (json['discountAmount'] as num).toDouble() ,
            netAmount: (json['netAmount'] as num).toDouble() ,
            organizationName: json['organizationName'] as String ,
            repositoryName: json['repositoryName'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Billing-usage-reportUsageItemsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Billing-usage-reportUsageItemsInner.fromJson(json);
    }

    final String  date;
    final String  product;
    final String  sku;
    final int  quantity;
    final String  unitType;
    final double  pricePerUnit;
    final double  grossAmount;
    final double  discountAmount;
    final double  netAmount;
    final String  organizationName;
    final  String? repositoryName;


    Map<String, dynamic> toJson() {
        return {
            'date': date,
            'product': product,
            'sku': sku,
            'quantity': quantity,
            'unitType': unitType,
            'pricePerUnit': pricePerUnit,
            'grossAmount': grossAmount,
            'discountAmount': discountAmount,
            'netAmount': netAmount,
            'organizationName': organizationName,
            'repositoryName': repositoryName,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          date,
          product,
          sku,
          quantity,
          unitType,
          pricePerUnit,
          grossAmount,
          discountAmount,
          netAmount,
          organizationName,
          repositoryName,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Billing-usage-reportUsageItemsInner
            && date == other.date
            && product == other.product
            && sku == other.sku
            && quantity == other.quantity
            && unitType == other.unitType
            && pricePerUnit == other.pricePerUnit
            && grossAmount == other.grossAmount
            && discountAmount == other.discountAmount
            && netAmount == other.netAmount
            && organizationName == other.organizationName
            && repositoryName == other.repositoryName
        ;
    }
}
