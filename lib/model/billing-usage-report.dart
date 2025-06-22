import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/billing-usage-report.dart';
import 'package:github/model/billing-usage-report_usage_items_inner.dart';
import 'package:github/model/billing-usage-report.dart';
import 'package:github/model/billing-usage-report_usage_items_inner.dart';
@immutable
class Billing-usage-report {
    Billing-usage-report(
        {  this.usageItems = const [],
         }
    );

    factory Billing-usage-report.fromJson(Map<String, dynamic>
        json) {
        return Billing-usage-report(
            usageItems: (json['usageItems'] as List?)?.map<Billing-usage-reportUsageItemsInner>((e) => Billing-usage-reportUsageItemsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Billing-usage-report? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Billing-usage-report.fromJson(json);
    }

    final  List<Billing-usage-reportUsageItemsInner>? usageItems;


    Map<String, dynamic> toJson() {
        return {
            'usageItems': usageItems?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
          usageItems.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Billing-usage-report
            && listsEqual(usageItems, other.usageItems)
        ;
    }
}
