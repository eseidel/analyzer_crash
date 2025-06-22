import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/billing-usage-report-user.dart';
import 'package:github/model/billing-usage-report-user_usage_items_inner.dart';
import 'package:github/model/billing-usage-report-user.dart';
import 'package:github/model/billing-usage-report-user_usage_items_inner.dart';
@immutable
class Billing-usage-report-user {
    Billing-usage-report-user(
        {  this.usageItems = const [],
         }
    );

    factory Billing-usage-report-user.fromJson(Map<String, dynamic>
        json) {
        return Billing-usage-report-user(
            usageItems: (json['usageItems'] as List?)?.map<Billing-usage-report-userUsageItemsInner>((e) => Billing-usage-report-userUsageItemsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Billing-usage-report-user? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Billing-usage-report-user.fromJson(json);
    }

    final  List<Billing-usage-report-userUsageItemsInner>? usageItems;


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
        return other is Billing-usage-report-user
            && listsEqual(usageItems, other.usageItems)
        ;
    }
}
